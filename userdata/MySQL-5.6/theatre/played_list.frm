TYPE=VIEW
query=select `theatre`.`played`.`played_id` AS `ID`,(select `theatre`.`role`.`title` from `theatre`.`role` where (`theatre`.`role`.`role_id` = `theatre`.`played`.`role_id`)) AS `Роль`,(select concat(`theatre`.`actors`.`lastname`,\' \',`theatre`.`actors`.`firstname`,\' \') from `theatre`.`actors` where (`theatre`.`actors`.`actor_id` = `theatre`.`played`.`actor_id`)) AS `Актер`,`theatre`.`played`.`played_date` AS `Дата отыгровки`,`theatre`.`played`.`premium` AS `Премия` from `theatre`.`played`
md5=33532b553acbb3906094c68159bf3d75
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2017-11-28 18:44:58
create-version=1
source=SELECT\nplayed_id AS "ID",\n(SELECT title FROM Role WHERE Role.role_id = Played.role_id) AS "Роль",\n(SELECT CONCAT(lastname, \' \', firstname, \' \') FROM Actors WHERE Actors.actor_id = Played.actor_id) AS "Актер", \nplayed_date AS "Дата отыгровки", \npremium AS "Премия" FROM Played
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `theatre`.`played`.`played_id` AS `ID`,(select `theatre`.`role`.`title` from `theatre`.`role` where (`theatre`.`role`.`role_id` = `theatre`.`played`.`role_id`)) AS `Роль`,(select concat(`theatre`.`actors`.`lastname`,\' \',`theatre`.`actors`.`firstname`,\' \') from `theatre`.`actors` where (`theatre`.`actors`.`actor_id` = `theatre`.`played`.`actor_id`)) AS `Актер`,`theatre`.`played`.`played_date` AS `Дата отыгровки`,`theatre`.`played`.`premium` AS `Премия` from `theatre`.`played`
