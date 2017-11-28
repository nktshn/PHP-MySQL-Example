TYPE=VIEW
query=select `theatre`.`contracts`.`contract_id` AS `ID`,(select concat(`theatre`.`actors`.`lastname`,\' \',`theatre`.`actors`.`firstname`,\' \',`theatre`.`actors`.`patronymic`) from `theatre`.`actors` where (`theatre`.`actors`.`actor_id` = `theatre`.`contracts`.`actor_id`)) AS `Актер`,(select concat(`theatre`.`contracts`.`period`,\' мес.\')) AS `Срок`,(select concat(`theatre`.`contracts`.`salary`,\'p.\')) AS `Зар. плата` from `theatre`.`contracts`
md5=e4dba70c00bf701d4e813299ae3efdb7
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2017-11-28 18:18:19
create-version=1
source=SELECT Contract_id AS ID, (SELECT CONCAT(lastname,\' \', firstname, \' \', patronymic) FROM Actors WHERE Actors.actor_id = Contracts.actor_id) AS "Актер", (SELECT(CONCAT(period, " мес."))) AS "Срок", (SELECT(CONCAT(salary, "p."))) AS "Зар. плата" FROM Contracts
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `theatre`.`contracts`.`contract_id` AS `ID`,(select concat(`theatre`.`actors`.`lastname`,\' \',`theatre`.`actors`.`firstname`,\' \',`theatre`.`actors`.`patronymic`) from `theatre`.`actors` where (`theatre`.`actors`.`actor_id` = `theatre`.`contracts`.`actor_id`)) AS `Актер`,(select concat(`theatre`.`contracts`.`period`,\' мес.\')) AS `Срок`,(select concat(`theatre`.`contracts`.`salary`,\'p.\')) AS `Зар. плата` from `theatre`.`contracts`
