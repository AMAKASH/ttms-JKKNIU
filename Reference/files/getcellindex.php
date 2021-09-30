<?php

session_start();
$class = $_GET["i"];
$str = "<option selected disabled>Select</option>";
$days = array("Sunday", Monday", "Tuesday", "Wednesday", "Thursday");
$day = $days[($class - 8) / 8];
$periods = array("period1", "period2", "period3", "period4", "period5", "period6", "period7");
$period = $periods[($class - 1) % 8];
$q = mysqli_query(mysqli_connect("localhost", "root", "", "ttms"), "SELECT * FROM teachers ");
while ($row = mysqli_fetch_assoc($q)) {
    $query = mysqli_query(mysqli_connect("localhost", "root", "", "ttms"), "SELECT * FROM " . $row['Teacher's_ID'] . " WHERE day = '$day'");
    $r = mysqli_fetch_assoc($query);
    if ($r[$period] == "-<br>-" || $r[$period] == "-<br>" || $r[$period] == "-") {
        $str .= " \"<option value=\"{$row['Teacher's_ID']}\">{$row['name']}</option>\"";
    }
}
echo $str;
?>