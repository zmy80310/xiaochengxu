<?php
header('Access-Control-Allow-Origin:*');
$pwo = $_POST['pwo'];
$tel = $_POST['tel'];
$db = new mysqli('localhost', 'root', '', 'chart');
if ($db->connect_errno) {
    die('请求数据库失败');
}
$db->query('set names utf8');
$sql = "select * from user where tel = '$tel'";
$res = $db->query($sql);
if ($res->num_rows) {
    echo "0";
} else {
    $id = time();
    $sql = "insert into user (pwo,tel,id) values ('{$pwo}','{$tel}','{$id}')";
    $res = $db->query($sql);
    if ($res) {
        echo "2";
    } else {
        echo "3";
    }
}

$db->close();


?>
