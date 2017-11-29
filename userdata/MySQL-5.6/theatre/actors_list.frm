TYPE=VIEW
query=select `theatre`.`actors`.`actor_id` AS `ID`,`theatre`.`actors`.`lastname` AS `Фамилия`,`theatre`.`actors`.`firstname` AS `Имя`,`theatre`.`actors`.`patronymic` AS `Отчество`,`theatre`.`actors`.`experience` AS `Опыт (лет)`,`theatre`.`actors`.`grade` AS `Звание`,`theatre`.`actors`.`birthday` AS `Дата рождения` from `theatre`.`actors`
md5=416f095b9f41403104ce6ff8c79d31e9
updatable=1
algorithm=0
definer_user=root
definer_host=%
suid=2
with_check_option=0
timestamp=2017-11-29 06:48:46
create-version=1
source=SELECT\nActor_id as ID,\nlastname as "Фамилия",\nfirstname as "Имя",\npatronymic as "Отчество",\nexperience as "Опыт (лет)",\ngrade as "Звание",\nbirthday as "Дата рождения" FROM Actors
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `theatre`.`actors`.`actor_id` AS `ID`,`theatre`.`actors`.`lastname` AS `Фамилия`,`theatre`.`actors`.`firstname` AS `Имя`,`theatre`.`actors`.`patronymic` AS `Отчество`,`theatre`.`actors`.`experience` AS `Опыт (лет)`,`theatre`.`actors`.`grade` AS `Звание`,`theatre`.`actors`.`birthday` AS `Дата рождения` from `theatre`.`actors`
