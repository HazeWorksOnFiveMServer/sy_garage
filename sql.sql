
CREATE TABLE `owned_vehicles` (
  `amigos` longtext DEFAULT NULL,
  `owner` varchar(46) DEFAULT NULL,
  `plate` varchar(12) NOT NULL,
  `vehicle` longtext DEFAULT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'car',
  `job` varchar(20) DEFAULT NULL,
  `stored` tinyint(4) NOT NULL DEFAULT 0,
  `parking` varchar(60) DEFAULT NULL,
  `pound` varchar(60) DEFAULT NULL,
  `mileage` int(11) DEFAULT 0,
  `glovebox` longtext DEFAULT NULL,
  `trunk` longtext DEFAULT NULL,
  `lastparking` longtext DEFAULT NULL,
  `lastposition` longtext DEFAULT NULL,
  `carseller` int(11) DEFAULT 0,
  `calle` tinyint(4) DEFAULT NULL,
  `infoimpound` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

ALTER TABLE `owned_vehicles`
  ADD PRIMARY KEY (`plate`),
  ADD KEY `amigos` (`amigos`(1024)),
  ADD KEY `amigos_2` (`amigos`(1024));
COMMIT;



ALTER TABLE owned_vehicles
ADD COLUMN IF NOT EXISTS infoimpound LONGTEXT DEFAULT NULL,
ADD COLUMN IF NOT EXISTS mileage INT(11) DEFAULT 0,
ADD COLUMN IF NOT EXISTS lastposition LONGTEXT DEFAULT NULL,
ADD COLUMN IF NOT EXISTS calle tinyint(4) DEFAULT NULL,
MODIFY COLUMN mileage INT(11)

UPDATE owned_vehicles
SET mileage = 0
