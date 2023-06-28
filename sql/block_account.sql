create table account
(
    type     int         not null,
    name     varchar(20) not null,
    sex      char(2)     not null,
    age      int         null,
    contact  varchar(20) not null,
    password varchar(20) not null,
    constraint account_contact_uindex
        unique (contact)
);

alter table account
    add primary key (contact);

INSERT INTO block.account (type, name, sex, age, contact, password) VALUES (1, '张三', '女', 20, '123654', '123456');
INSERT INTO block.account (type, name, sex, age, contact, password) VALUES (1, '李六', '男', 55, '1889996', '9878654');
INSERT INTO block.account (type, name, sex, age, contact, password) VALUES (1, '王麻子', '男', 56, '987777', '123456');
INSERT INTO block.account (type, name, sex, age, contact, password) VALUES (2, 'boss', '男', 48, '987789', '123456');