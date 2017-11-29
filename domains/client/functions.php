<?php
function getData($query, $toSort) {
    $result = mysqli_query(is_connected(), $query);
    $d = mysqli_fetch_all($result);
    if ($toSort) {
        sort($d);
    }
    return $d;
}

function generate_selectors($tables)
{
    for ($i = 0; $i < count($tables); $i++) {
        echo "<option name={$tables[$i][0]} value={$tables[$i][0]}>{$tables[$i][0]}</option>";
    }
}

function show_table($t_headers, $rows)
{

    //headers
    echo "<tr>";
    for ($i = 1; $i < count($t_headers); $i++) {
        echo "<th class = 'table_th table-header'>{$t_headers[$i][0]}</th>";
    }
    //rows
    echo "</tr>";
    for ($j = 0; $j < count($rows); $j++) {
        echo "<tr>";
        for ($i = 1; $i < count($t_headers); $i++) {
            echo "<td class = 'table_th'>{$rows[$j][$i]}</td>";
        }
        echo "<tr>";
    }
    //add form
    echo "<form action='index.php' method='post'>";
    echo "<tr>";
    for ($i = 1; $i < count($t_headers); $i++) {
        echo "<td class = 'table_th'><input class='add-input' type='text' placeholder='...'></td>";
    }
    echo "</tr>";
    echo "</form>";
}

function debug($elem) {
    echo "<pre>";
    print_r($elem);
    echo "</pre>";
}