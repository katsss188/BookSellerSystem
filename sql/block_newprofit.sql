create definer = mysqltest@localhost view newprofit as
select `block`.`purchase`.`bid`                                                                AS `bid`,
       (`block`.`purchase`.`count` * (`block`.`purchase`.`price` - `block`.`inbound`.`price`)) AS `profit`,
       `block`.`purchase`.`time`                                                               AS `time`,
       `block`.`purchase`.`count`                                                              AS `count`
from `block`.`purchase`
         join `block`.`inbound`
where (`block`.`purchase`.`bid` = `block`.`inbound`.`bid`);

INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 55, '2023-06-21 11:47:57', 5);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 11, '2023-06-21 11:47:57', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 11, '2023-06-21 11:47:58', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 55, '2023-06-23 22:11:15', 5);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 11, '2023-06-23 22:11:15', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 11, '2023-06-23 22:11:15', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 55, '2023-06-23 22:18:34', 5);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 11, '2023-06-23 22:18:34', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 11, '2023-06-23 22:18:34', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 55, '2023-06-23 22:21:14', 5);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 11, '2023-06-23 22:21:14', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 11, '2023-06-23 22:21:14', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0002', -345, '2023-06-26 11:29:05', 5);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0002', -2967, '2023-06-26 11:35:45', 43);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('100', 675, '2023-06-26 11:35:45', 27);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('1000', 1408, '2023-06-26 11:35:45', 44);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('1000', 484, '2023-06-26 11:35:45', 44);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('339', -648, '2023-06-26 12:20:03', 12);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 11, '2023-06-26 15:55:27', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0002', -69, '2023-06-26 15:55:27', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('1', 11, '2023-06-26 15:55:27', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('10', 37, '2023-06-26 15:55:27', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('1', 66, '2023-06-26 15:55:45', 6);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('10', 37, '2023-06-26 15:55:59', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 11, '2023-06-26 20:05:35', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0002', -138, '2023-06-26 20:05:35', 2);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 77, '2023-06-26 22:20:16', 7);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('1', 110, '2023-06-26 22:20:50', 10);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 33, '2023-06-26 22:21:10', 3);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0001', 286, '2023-06-26 22:23:46', 26);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('0002', -69, '2023-06-26 22:24:23', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('1001', 36, '2023-06-26 22:24:42', 1);
INSERT INTO block.newprofit (bid, profit, time, count) VALUES ('1001', 11, '2023-06-26 22:24:42', 1);