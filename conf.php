<?php
$kasutaja='antonbuivol';
$sererinimi='localhost';
$parool='123456';
$andmebaas='antonbuivol';
$yhendus=new mysqli($sererinimi,$kasutaja,$parool,$andmebaas);
$yhendus->set_charset('UTF8');
?>