TYPE=VIEW
query=select `theatre`.`role`.`role_id` AS `ID`,(select `theatre`.`play`.`title` from `theatre`.`play` where (`theatre`.`play`.`play_id` = `theatre`.`role`.`play_id`)) AS `Спектакль`,`theatre`.`role`.`title` AS `Название роли` from `theatre`.`role`
md5=3fbe85344a7ad908b28887affd9231be
updatable=0
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2017-11-28 18:48:48
create-version=1
source=SELECT\nrole_id AS ID,\n(SELECT title FROM Play WHERE Play.play_id = Role.play_id) AS "Спектакль",\ntitle AS "Название роли" FROM Role
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `theatre`.`role`.`role_id` AS `ID`,(select `theatre`.`play`.`title` from `theatre`.`play` where (`theatre`.`play`.`play_id` = `theatre`.`role`.`play_id`)) AS `Спектакль`,`theatre`.`role`.`title` AS `Название роли` from `theatre`.`role`
