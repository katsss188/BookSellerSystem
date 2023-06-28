create table purchase
(
    id    int auto_increment
        primary key,
    uid   varchar(20) not null,
    bid   char(4)     not null,
    price int         not null,
    count int         not null,
    time  datetime    null,
    constraint purchase_account_contact_fk
        foreign key (uid) references account (contact),
    constraint purchase_book_id_fk
        foreign key (bid) references book (id)
);

INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (17, '123654', '0001', 18, 5, '2023-06-21 11:47:57');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (18, '1889996', '0001', 18, 1, '2023-06-21 11:47:57');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (19, '1889996', '0001', 18, 1, '2023-06-21 11:47:58');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (20, '123654', '0001', 18, 5, '2023-06-23 22:11:15');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (21, '1889996', '0001', 18, 1, '2023-06-23 22:11:15');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (22, '1889996', '0001', 18, 1, '2023-06-23 22:11:15');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (23, '123654', '0001', 18, 5, '2023-06-23 22:18:34');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (24, '1889996', '0001', 18, 1, '2023-06-23 22:18:34');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (25, '1889996', '0001', 18, 1, '2023-06-23 22:18:34');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (26, '123654', '0001', 18, 5, '2023-06-23 22:21:14');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (27, '1889996', '0001', 18, 1, '2023-06-23 22:21:14');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (28, '1889996', '0001', 18, 1, '2023-06-23 22:21:14');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (29, '123654', '0002', 18, 5, '2023-06-26 11:29:05');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (30, '123654', '0002', 18, 43, '2023-06-26 11:35:45');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (31, '123654', '100', 24, 27, '2023-06-26 11:35:45');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (32, '123654', '1000', 63, 44, '2023-06-26 11:35:45');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (33, '123654', '339', 16, 12, '2023-06-26 12:20:03');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (34, '123654', '0001', 18, 1, '2023-06-26 15:55:27');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (35, '123654', '0002', 18, 1, '2023-06-26 15:55:27');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (36, '123654', '1', 61, 1, '2023-06-26 15:55:27');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (37, '123654', '10', 89, 1, '2023-06-26 15:55:27');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (38, '123654', '1', 61, 6, '2023-06-26 15:55:45');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (39, '123654', '10', 89, 1, '2023-06-26 15:55:59');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (40, '123654', '0001', 18, 1, '2023-06-26 20:05:35');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (41, '123654', '0002', 18, 2, '2023-06-26 20:05:35');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (42, '123654', '0001', 18, 7, '2023-06-26 22:20:16');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (43, '123654', '1', 61, 10, '2023-06-26 22:20:50');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (44, '123654', '0001', 18, 3, '2023-06-26 22:21:10');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (45, '123654', '0001', 18, 26, '2023-06-26 22:23:46');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (46, '123654', '0002', 18, 1, '2023-06-26 22:24:23');
INSERT INTO block.purchase (id, uid, bid, price, count, time) VALUES (47, '123654', '1001', 73, 1, '2023-06-26 22:24:42');