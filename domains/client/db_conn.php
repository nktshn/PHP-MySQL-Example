<?php
$db_host = 'client';
$db_username = 'mysql';
$db_password = 'mysql';
$db_name = 'theatre';
$db_charset = 'utf8';

$connection = @mysqli_connect($db_host, $db_username, $db_password, $db_name);

function is_connected() {
    global $connection;
    return $connection;
}

function show_conn_status($c) {
    if ($c) {
        echo "<span style='position: absolute; bottom: 3px; right: 3px; color: #33da0c'>connected</span>";
    } else {
        echo "<span style='position: absolute; bottom: 3px; right: 3px; color: #ff5651'>not connected</span>";
    }
}
