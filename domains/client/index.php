<?php
require('db_conn.php');
show_conn_status(is_connected());
?>
<!doctype html>
<html lang="en">
<head>
    <link rel="stylesheet" href="styles.css">
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>THEATRE</title>
</head>
<body>
<p>Выберите таблицу</p>
<form action="/show-table.php" method="post">
    <label for="table-selector"></label><select name="table-selector" id="table-selector">
        <option name="actors" value="actors">Актеры</option>
        <option name="contracts" value="contracts">Контракты</option>
        <option name="play" value="play">Спектакли</option>
        <option name="played" value="played">Отыграно</option>
        <option name="role" value="role">Роли</option>
    </select>
    <button value="" type="submit">Показать</button>
</form>
</body>
</html>
