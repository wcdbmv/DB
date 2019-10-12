create schema if not exists fs_db;

drop table if exists fs_db.inodes cascade;
drop table if exists fs_db.types cascade;
drop table if exists fs_db.users cascade;
drop table if exists fs_db.groups cascade;
drop table if exists fs_db.users_groups cascade;

-- вообще-то у пацанов табы шириной 8

create table fs_db.types (
	id		serial primary key,
	name		varchar(16) not null,
	shortcut	char not null
);

create table fs_db.users (
	id		serial primary key,
	name		varchar(32) not null
);

create table fs_db.groups (
	id		serial primary key,
	name		varchar(32) not null
);

create table fs_db.users_groups (
	id		serial primary key,
	user_id		serial not null references fs_db.users(id),
	group_id	serial not null references fs_db.groups(id)
);

create table fs_db.inodes (
	inode		serial primary key,
	name		varchar(64) not null,
	parent_inode	integer references fs_db.inodes(inode),
	type_id		serial not null references fs_db.types(id),
	owner_id	serial not null references fs_db.users(id),
	group_id	serial not null references fs_db.groups(id)
);
