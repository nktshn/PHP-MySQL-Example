<?php

require('db_conn.php');
show_conn_status(is_connected());
if (empty($_POST)) {
    $table = 'actors';
} else {
    $table = $_POST['table-selector'];
}
$query = 'SHOW FULL TABLES FROM theatre WHERE Table_Type != \'VIEW\'';
$result = mysqli_query(is_connected(), $query);
$tables = mysqli_fetch_all($result);
sort($tables);

$query = 'SELECT * FROM ' . $table . "_list";
$result = mysqli_query(is_connected(), $query);
$out = mysqli_fetch_all($result);
sort($out);

$query = 'SHOW COLUMNS FROM ' . $table . "_list";
$result = mysqli_query(is_connected(), $query);
$t_headers = mysqli_fetch_all($result);

function generate_selector($tables)
{
    for ($i = 0; $i < count($tables); $i++) {
        echo "<option name={$tables[$i][0]} value={$tables[$i][0]}>{$tables[$i][0]}</option>";
    }
}

function show_table($t_headers, $rows)
{
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
    <title><?php echo strtoupper($table) ?> | THEATRE</title>
</head>
<body>

<form action="/index.php" method="post">
    <label for="table-selector"></label><select name="table-selector" id="table-selector">
        <?php
        generate_selector($tables);
        ?>
    </select>
    <button value="" type="submit">Показать</button>
</form>
<table class="table">
    <?php
    show_table($t_headers, $out);
    ?>
</table>


<!--<pre>-->
<?php
//print_r($tables);
//?>
<!--</pre>-->
</body>
</html>


