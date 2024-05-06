<?php
$kasutaja='veronika';
$sererinimi='localhost';
$parool='1234';
$andmebaas='veronika';
$yhendus=new mysqli($sererinimi,$kasutaja,$parool,$andmebaas);
$yhendus->set_charset('UTF8');
?>