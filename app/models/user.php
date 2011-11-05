<?php

class user extends models {
	private $SALT_LENGTH = 9;

	public function registerUser($username,$password){
		$hashedPassword = $this->hashPassword($password);
		$datos = array(
			'username' => $username,
			'password' => $hashedPassword
		 );
		$this->prepareFromArray($datos);
		return $this->save();
	}
	
	public function identifyUser($username,$password){
		$usr = $this->findBySql("SELECT password FROM users WHERE username='$username'");
		$hashedPassword = $usr["password"];
		if ($hashedPassword == $this->hashPassword($password,$hashedPassword)) {
			$client = $this->findBySql("SELECT users.idUser, users.username, clients.idClient, clients.firstName, clients.lastName, clients.telephone, clients.address, clients.city, clients.cp 
										FROM users 
										INNER JOIN clients 
										ON users.idUser=clients.idUser 
										WHERE users.username='$username' AND users.password='$hashedPassword'");
			$restaurant = $this->findBySql("SELECT users.idUser, users.username, restaurants.idRestaurant, restaurants.telephone, restaurants.address, restaurants.city, restaurants.cp, restaurants.logo, restaurants.idType												
										FROM users
										INNER JOIN restaurants													
										ON users.idUser=restaurants.idUser 													
										WHERE users.username='$username' AND users.password='$hashedPassword'");

			return (isset($client["idUser"])) ? $client : $restaurant;
			//return $this->findBySql("SELECT * FROM users WHERE username='$username' AND password='$hashedPassword'");
		} else {
			return false;
		}
	}

	private function hashPassword($plainPassword,$salt = null) {
		if ($salt == null){
			$salt = substr(md5(uniqid(rand(), true)), 0, $this->SALT_LENGTH);
		} else {
			$salt = substr($salt,0, $this->SALT_LENGTH);
		}
		return $salt.sha1($salt.$plainPassword);
	}
}
?>