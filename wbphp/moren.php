<?php
header('Access-Control-Allow-Origin:*');

$id = $_GET['id'];

$db = new mysqli('localhost','root','','chart');
if($db->connect_errno){
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "select sex from site where id = '$id' ";

$res = $db->query($sql);

if($res){
    $res = $res->fetch_assoc();
    echo json_encode($res);
}else{
    echo "0";
}

$db->close();















?>
