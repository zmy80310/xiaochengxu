<?php
header('Access-Control-Allow-Origin:*');
require_once('db.php');
$name = $_POST['uname'];
$text = $_POST['text'];
$price = $_POST['price'];
$number = $_POST['number'];
$src = $_POST['img'];
$type = $_POST['type'];
$id = time();
$db = new DB('localhost','root','','chart');

$res = $db->insert("insert into home(name,text,price,number,src,type,id) values ('{$name}','{$text}','{$price}','{$number}','{$src}','{$type}','{$id}')");
if($res){
    echo "添加成功";
}else{
    echo "添加失败";
}








?>
