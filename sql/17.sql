-- 1
alter table vendors
add vend_web varchar(2048);

-- 2
update vendors
set vend_web = 'https://funandgames.org/'
where vend_id = 'FNG01';
