<?php
header('Access-Control-Allow-Origin:*');
$name = $_POST['name'];
$cell = $_POST['cell'];
$cite = $_POST['cite'];
$address = $_POST['address'];
$id = $_POST['id'];
$state = $_POST['state'];
$tel = $_POST['tel'];
$db = new mysqli('localhost', 'root', '', 'chart');
if ($db->connect_errno) {
    die('连接数据库失败');
}
$db->query('set names utf8');

if($state == 'true'){
    $sql = "update site set sex = 'false' where tel = '$tel'";
    $res = $db->query($sql);
}

$sql = "update site set name = '$name',cell = '$cell',city = '$cite',address = '$address',sex = '$state' where id = '$id'";

$res = $db->query($sql);

if($res){
    echo "1";
}else{
    echo "0";
}

$db->close();



?>
