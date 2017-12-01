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

function show_table($view_headers, $rows, $table_headers, $FKs, $tablename)
{
    //headers
    echo "<tr>";
    for ($i = 1; $i < count($view_headers); $i++) {
        echo "<th class = 'table_th table-header'>{$view_headers[$i][0]}</th>";
    }
    //rows
    echo "</tr>";
    for ($j = 0; $j < count($rows); $j++) {
        echo "<tr>";
        for ($i = 1; $i < count($view_headers); $i++) {
            echo "<td class = 'table_th'>{$rows[$j][$i]}</td>";
        }
        echo "<tr>";
    }
    //add form
    echo "<form action='index.php' method='post'>";
    echo "<tr>";

    for ($i = 1; $i < count($view_headers); $i++) {
        for ($j = 0; $j < count($FKs); $j++) {
            if (strtolower($FKs[$j][0]) == strtolower($tablename)) {
                $IDs = getData('SELECT '.$FKs[$j][1].' FROM '.$FKs[$j][3], true);
                debug($IDs);

            }
        }
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