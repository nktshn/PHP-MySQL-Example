TYPE=VIEW
query=select `theatre`.`actors`.`actor_id` AS `ID`,(select concat(`theatre`.`actors`.`lastname`,\' \',substr(`theatre`.`actors`.`firstname`,1,1),\'.\',substr(`theatre`.`actors`.`patronymic`,1,1),\'.\')) AS `ФИО`,`theatre`.`actors`.`experience` AS `Опыт`,`theatre`.`actors`.`grade` AS `Звание`,`theatre`.`actors`.`birthday` AS `Дата рождения` from `theatre`.`actors`
md5=52d91d717d5bf9215e1634283a1b16e2
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2017-11-28 18:03:53
create-version=1
source=SELECT actor_id AS ID, (SELECT CONCAT(lastname, \' \', SUBSTRING(firstname, 1, 1), \'.\', SUBSTRING(patronymic, 1, 1), \'.\'))\nAS "ФИО", experience AS "Опыт", grade AS "Звание", birthday AS "Дата рождения" FROM Actors
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `theatre`.`actors`.`actor_id` AS `ID`,(select concat(`theatre`.`actors`.`lastname`,\' \',substr(`theatre`.`actors`.`firstname`,1,1),\'.\',substr(`theatre`.`actors`.`patronymic`,1,1),\'.\')) AS `ФИО`,`theatre`.`actors`.`experience` AS `Опыт`,`theatre`.`actors`.`grade` AS `Звание`,`theatre`.`actors`.`birthday` AS `Дата рождения` from `theatre`.`actors`
