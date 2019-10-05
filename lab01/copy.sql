truncate table fs_db.types cascade;
truncate table fs_db.users cascade;
truncate table fs_db.groups cascade;
truncate table fs_db.users_groups cascade;
truncate table fs_db.inodes cascade;

\copy fs_db.types from 'types.csv' csv header;
\copy fs_db.users from 'users.csv' csv header;
\copy fs_db.groups from 'groups.csv' csv header;
\copy fs_db.users_groups from 'users_groups.csv' csv header;
\copy fs_db.inodes from 'inodes.csv' csv header;
