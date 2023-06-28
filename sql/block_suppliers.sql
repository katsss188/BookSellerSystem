create table suppliers
(
    id      char(4)     not null
        primary key,
    name    varchar(20) not null,
    address varchar(20) not null,
    contact varchar(20) not null
)
    comment '供应商';

INSERT INTO block.suppliers (id, name, address, contact) VALUES ('0001', 'Jom', '四海市', '1234');
INSERT INTO block.suppliers (id, name, address, contact) VALUES ('1000', '华飞所', '四海市', '1000');
INSERT INTO block.suppliers (id, name, address, contact) VALUES ('2000', '洛阳印刷有限公司', '四海市', '2000');
INSERT INTO block.suppliers (id, name, address, contact) VALUES ('3000', '九七书业', '四海市', '3000');
INSERT INTO block.suppliers (id, name, address, contact) VALUES ('4000', '武陵集团', '四海市', '4000');
INSERT INTO block.suppliers (id, name, address, contact) VALUES ('5000', '毕娜奇书业', '四海市', '8881234');
INSERT INTO block.suppliers (id, name, address, contact) VALUES ('6000', '罗伯特爱尔讯', '宣城省首尔市', '9888888');