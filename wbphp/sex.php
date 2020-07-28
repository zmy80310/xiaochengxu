<?php
header('Access-Control-Allow-Origin:*');
$index = $_GET['sex'];
$id = $_GET['id'];
$tel = $_GET['tel'];
$db = new mysqli('localhost', 'root', '', 'chart');
if ($db->connect_errno) {
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "update site set sex = '$index' where id = '$id' and tel = '$tel'";

$res = $db->query($sql);

if($res){
    $sql = "select sex from site where id = '$id' and tel = '$tel'";
    $res = $db->query($sql);
    if($res->num_rows){
        $res = $res->fetch_assoc();
        echo json_encode($res);
    }else{
        echo '2';
    }
}else{
    echo "0";
}

$db->close();



?>
