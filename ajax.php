<?php
header("Content-type:text/html;charset=utf-8");

$mysqli = new mysqli('localhost', 'root', 'admin', 'mianshi');

/*
 * This is the "official" OO way to do it,
 * BUT $connect_error was broken until PHP 5.2.9 and 5.3.0.
 */
if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
            . $mysqli->connect_error);
}
$mysqli->set_charset('utf8');
$sql = 'select * from acorse';
$res = getAll($sql,$mysqli);
$mysqli->close();
// var_dump($res);
$lv = '';
$score = isset($_GET['score'])?$_GET['score']:'';
$min = $max = 0;
$min = reset($res)['min_score'];
$max = end($res)['max_score'];
if ($score>=$min && $score<=$max) {
	foreach ($res as $k => $v) {	
		if ($score>$v['min_score'] && $score<$v['max_score']) {
			$lv = $res[$k]['rank'];
			break;
		}
	}
}
echo json_encode($lv);

function getAll($sql,$mysqli){
	if($res = $mysqli->query($sql)){
		//定义一空数组,用来装我们的记录
		$arr = array();
		while($row = $res->fetch_assoc()){
			$arr[] = $row;
		}
	}else{
		echo '<br> sql执行失败, 原因是';
		die('info:' . $mysqli->error);
	}
	
	//可以马上是否结果集
	$res->free();
	return $arr;
}
?>