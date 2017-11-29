TYPE=VIEW
query=select `theatre`.`played`.`played_id` AS `ID`,(select `theatre`.`role`.`title` from `theatre`.`role` where (`theatre`.`role`.`role_id` = `theatre`.`played`.`role_id`)) AS `Роль`,(select concat(`theatre`.`actor`.`lastname`,\' \',`theatre`.`actor`.`firstname`,\' \') from `theatre`.`actor` where (`theatre`.`actor`.`actor_id` = `theatre`.`played`.`actor_id`)) AS `Актер`,`theatre`.`played`.`played_date` AS `Дата отыгровки`,`theatre`.`played`.`premium` AS `Премия` from `theatre`.`played`
md5=f836e2fc3ed76279a2d47cf40ad1d97b
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=1
with_check_option=0
timestamp=2017-11-29 08:51:26
create-version=1
source=select `theatre`.`played`.`played_id` AS `ID`,(select `theatre`.`role`.`title` from `theatre`.`role` where (`theatre`.`role`.`role_id` = `theatre`.`played`.`role_id`)) AS `Роль`,(select concat(`theatre`.`actor`.`lastname`,\' \',`theatre`.`actor`.`firstname`,\' \') from `theatre`.`actor` where (`theatre`.`actor`.`actor_id` = `theatre`.`played`.`actor_id`)) AS `Актер`,`theatre`.`played`.`played_date` AS `Дата отыгровки`,`theatre`.`played`.`premium` AS `Премия` from `theatre`.`played`
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `theatre`.`played`.`played_id` AS `ID`,(select `theatre`.`role`.`title` from `theatre`.`role` where (`theatre`.`role`.`role_id` = `theatre`.`played`.`role_id`)) AS `Роль`,(select concat(`theatre`.`actor`.`lastname`,\' \',`theatre`.`actor`.`firstname`,\' \') from `theatre`.`actor` where (`theatre`.`actor`.`actor_id` = `theatre`.`played`.`actor_id`)) AS `Актер`,`theatre`.`played`.`played_date` AS `Дата отыгровки`,`theatre`.`played`.`premium` AS `Премия` from `theatre`.`played`
