alter table fs_db.users
	add constraint name_not_empty check (name != '');

alter table fs_db.groups
	add constraint name_not_empty check (name != '');

alter table fs_db.inodes
	add constraint name_not_empty check (name != '');
