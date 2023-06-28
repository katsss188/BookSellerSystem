create table publisher
(
    id      char(4)     not null,
    name    varchar(20) not null,
    contact varchar(20) not null,
    constraint publisher_id_uindex
        unique (id)
);

alter table publisher
    add primary key (id);

INSERT INTO block.publisher (id, name, contact) VALUES ('0001', '上海出版社', '18965478553');
INSERT INTO block.publisher (id, name, contact) VALUES ('1000', '北京出版社', '1000');
INSERT INTO block.publisher (id, name, contact) VALUES ('2000', '南海出版社', '55555');
INSERT INTO block.publisher (id, name, contact) VALUES ('3000', '四海出版社', '66666666');
INSERT INTO block.publisher (id, name, contact) VALUES ('4000', '卡机出版社', '5555555555');
INSERT INTO block.publisher (id, name, contact) VALUES ('5000', '王麻子出版社', '777777777777');