<?php

require('db_conn.php');

$table = $_POST['table-selector'];
$query = 'SELECT * FROM ' . $table;
$result = mysqli_query(is_connected(), $query);
$out = mysqli_fetch_all($result);

$query = 'SHOW COLUMNS FROM ' . $table;
$result = mysqli_query(is_connected(), $query);
$t_headers = mysqli_fetch_all($result);

function show_table($t_headers, $rows) {
 echo "<tr>";
        for ($i = 0; $i < count($t_headers); $i++) {
            echo "<th class = 'table_th'>{$t_headers[$i][0]}</th>";
        }

 echo "</tr>";
for ($j = 0; $j < count($rows); $j++) {
    echo "<tr>";
    for ($i = 0; $i < count($t_headers); $i++) {
        echo "<td class = 'table_th'>{$rows[$j][$i]}</td>";
    }
    echo "<tr>";
}
}

?>
<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="styles.css">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>TABLE</title>
</head>
<body>
<table class="table">
    <?php
    show_table($t_headers, $out);
    ?>
</table>


<!--<pre>-->
<?php
//print_r($out);
//?>
<!--</pre>-->
</body>
</html>


