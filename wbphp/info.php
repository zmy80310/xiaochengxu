<?php
header('Access-Control-Allow-Origin:*');
$id = $_GET['id'];

$db = new mysqli('localhost','root','','chart');
// 中文编码
if($db->connect_errno){
    die("连接数据库失败");
}
$db -> query('set names utf8');
$sql = "select * from home where id = '$id'";
$res = $db -> query($sql);
if($res -> num_rows){
    echo json_encode($res->fetch_assoc());
}
$db -> close();
?>



