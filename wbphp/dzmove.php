<?php
header('Access-Control-Allow-Origin:*');
$id = $_POST['id'];
$db = new mysqli('localhost', 'root', '', 'chart');
if ($db->connect_errno) {
    die('连接数据库失败');
}
$db->query('set names utf8');

$sql = "delete from site where id = '$id'";

$res = $db->query($sql);
if ($res) {
    echo '1';
} else {
    echo "0";
}


?>
