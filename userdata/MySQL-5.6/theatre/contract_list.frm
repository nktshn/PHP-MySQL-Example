TYPE=VIEW
query=select `theatre`.`contract`.`contract_id` AS `ID`,(select concat(`theatre`.`actor`.`lastname`,\' \',`theatre`.`actor`.`firstname`,\' \',`theatre`.`actor`.`patronymic`) from `theatre`.`actor` where (`theatre`.`actor`.`actor_id` = `theatre`.`contract`.`actor_id`)) AS `Актер`,`theatre`.`contract`.`period` AS `Срок (мес)`,`theatre`.`contract`.`salary` AS `Зар. плата (руб)` from `theatre`.`contract`
md5=b02b9d3e265b3d900a8ad44909107e2a
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2017-11-29 08:46:49
create-version=1
source=select `theatre`.`contract`.`contract_id` AS `ID`,(select concat(`theatre`.`actor`.`lastname`,\' \',`theatre`.`actor`.`firstname`,\' \',`theatre`.`actor`.`patronymic`) from `theatre`.`actor` where (`theatre`.`actor`.`actor_id` = `theatre`.`contract`.`actor_id`)) AS `Актер`,`theatre`.`contract`.`period` AS `Срок (мес)`,`theatre`.`contract`.`salary` AS `Зар. плата (руб)` from `theatre`.`contract`
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `theatre`.`contract`.`contract_id` AS `ID`,(select concat(`theatre`.`actor`.`lastname`,\' \',`theatre`.`actor`.`firstname`,\' \',`theatre`.`actor`.`patronymic`) from `theatre`.`actor` where (`theatre`.`actor`.`actor_id` = `theatre`.`contract`.`actor_id`)) AS `Актер`,`theatre`.`contract`.`period` AS `Срок (мес)`,`theatre`.`contract`.`salary` AS `Зар. плата (руб)` from `theatre`.`contract`
