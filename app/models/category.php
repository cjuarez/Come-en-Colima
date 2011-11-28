<?php
  class category extends models {
    public function xssClean($value, $params) {
		$type = (isset($params[0]))? $params[0] : 'false';
		return $this->security->clean($value, $type);
	}
  }
?>