-- liquibase formatted sql

-- changeset generated:1
DROP TABLE IF EXISTS auth_group;
CREATE TABLE auth_group (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(150) NOT NULL, CONSTRAINT PK_AUTH_GROUP PRIMARY KEY (id), UNIQUE (name));

-- changeset generated:2
DROP TABLE IF EXISTS auth_group_permissions;
CREATE TABLE auth_group_permissions (id INT AUTO_INCREMENT NOT NULL, group_id INT NOT NULL, permission_id INT NOT NULL, CONSTRAINT PK_AUTH_GROUP_PERMISSIONS PRIMARY KEY (id));

-- changeset generated:3
DROP TABLE IF EXISTS auth_permission;
CREATE TABLE auth_permission (id INT AUTO_INCREMENT NOT NULL, name VARCHAR(255) NOT NULL, content_type_id INT NOT NULL, codename VARCHAR(100) NOT NULL, CONSTRAINT PK_AUTH_PERMISSION PRIMARY KEY (id));

