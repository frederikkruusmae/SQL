<?php
//***protseduuriline***//
//sinu andmed
$db_server = 'localhost';
$db_andmebaas = 'muusikapood_frederik';
$db_kasutaja = 'fkruusimae';
$db_salasona = 'fkruusimae';
//ühendus andmebaasiga
$yhendus = mysqli_connect($db_server, $db_kasutaja, $db_salasona, $db_andmebaas);
//ühenduse kontroll
if(!$yhendus){
	die('Ei saa ühendust andmebaasiga');
}
?>