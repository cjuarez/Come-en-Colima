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
			return $this->findBySql("SELECT * FROM users WHERE username='$username' AND password='$hashedPassword'");
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