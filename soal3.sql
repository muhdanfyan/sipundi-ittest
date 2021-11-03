
CREATE TABLE `transaction` (
  `name` varchar(100) NOT NULL DEFAULT '0',
  `product` varchar(100) NOT NULL DEFAULT '0',
  `price` bigint(20) NOT NULL DEFAULT 0,
  `amount` int(11) NOT NULL DEFAULT 0,
  `transactionDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='transaksi';


INSERT INTO `transaction` (`name`, `product`, `price`, `amount`, `transactionDate`) VALUES
('Ahmad', 'Green Tea', 15000, 1, '2021-09-21'),
('Budi', 'Green Tea', 15000, 1, '2021-09-22'),
('Cecep', 'Thai Tea', 12000, 1, '2021-10-02'),
('Cecep', 'Red Velvet', 18000, 1, '2021-10-02'),
('Ahmad', 'Green Tea', 15000, 1, '2021-10-03'),
('Ahmad', 'Thai Tea', 12000, 2, '2021-09-21'),
('Ahmad', 'Thai Tea', 12000, 2, '2021-09-23'),
('Ahmad', 'Red Velvet', 18000, 2, '2021-10-03');

-- Query dari soal nomor 3 ada dibawah ini : 
SELECT NAME, sum(price) AS totalPrice, transactionDate FROM `transaction` where NAME= 'Ahmad' GROUP BY transactionDate