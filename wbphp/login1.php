<?php
header('Access-Control-Allow-Origin:*');
$tel = $_GET['tel'];
$pwo = $_GET['pwo'];
$db = new mysqli('localhost','root','','chart');
// 中文编码
if($db->connect_errno){
    die("连接数据库失败");
}
$db -> query('set names utf8');
$sql = "select * from user where tel = '$tel'";
$res = $db -> query($sql);
if($res -> num_rows){
   $res = $res -> fetch_assoc()['pwo'];
   if($res == $pwo){
       echo '1';
   }else{
       echo '0';
   }
}else{
    echo '2';
}
$db -> close();
?>



