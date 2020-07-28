<?php
header('Access-Control-Allow-Origin:*');
$name = $_POST['name'];
$tel = $_POST['tel'];
$cell = $_POST['cell'];
$cite = $_POST['cite'];
$address = $_POST['address'];
$state = $_POST['state'];
$id = time();
$db = new mysqli('localhost','root','','chart');
if($db->connect_errno){
    die('连接数据库失败');
}
$db->query('set names utf8');

if($state == 'true'){
    $sql = "update site set sex = 'false' where tel = '$tel'";
    $res = $db->query($sql);
}

$sql = "insert into site(id,name,cell,tel,address,city,sex) values('$id','$name','$cell','$tel','$address','$cite','$state')";

$res = $db->query($sql);

if($res){
    echo '1';
}else{
    echo "0";
}

$db->close();















?>
