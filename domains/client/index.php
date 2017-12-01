<?php

require('db_conn.php');
require('functions.php');
show_conn_status(is_connected());

if (empty($_POST)) {
    $table = 'actor';
} else {
    $table = $_POST['table-selector'];
}

$tables = getData('SHOW FULL TABLES FROM theatre WHERE Table_Type != \'VIEW\'', true);
$out = getData('SELECT * FROM ' . $table . "_list", true);
$view_headers = getData('SHOW COLUMNS FROM ' . $table . "_list", false);
$table_headers = getData('SHOW COLUMNS FROM ' . $table, false);
$FKs = getData('SELECT  TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_SCHEMA = \'theatre\' ', false);

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
        generate_selectors($tables);
        ?>
    </select>
    <button value="" type="submit">Показать</button>
</form>
<section class="main-section">
    <table class="table">
        <?php
        echo strtoupper("<p class='table-title'>$table</p>");
        show_table($view_headers, $out, $table_headers, $FKs, $table);
        ?>
    </table>
</section>

<?php
debug($FKs);
debug($table_headers);
?>
</body>
</html>


