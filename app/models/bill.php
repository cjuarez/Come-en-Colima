<?php
  class bill extends models {

	public function getTotal(){
		$sql = "SELECT SUM(price) as total
				FROM dishes 
				INNER JOIN billitems 
				ON dishes.idDish = billitems.idDish 
				WHERE billitems.idBill = $this->idBill";
		$total = $this->findBySql($sql);
		return $total["total"];
	}
	
	public function getBillItemsGrouped(){
		$sql = "SELECT dishes.dish, count(dishes.dish), SUM(price) as total
				FROM dishes 
				INNER JOIN billitems 
				ON dishes.idDish = billitems.idDish 
				WHERE billitems.idBill = $this->idBill
				GROuP BY dishes.dish";
		return $this->findAllBySql($sql);
	}
  
}
?>