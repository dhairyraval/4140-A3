CREATE TABLE `X-clients519` (
  `clientId519` varchar(45) NOT NULL,
  `clientName519` varchar(45) DEFAULT NULL,
  `clientCity519` varchar(45) DEFAULT NULL,
  `clientPassword519` varchar(45) DEFAULT NULL,
  `moneyOwed519` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`clientId519`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `X-parts519` (
  `partNo519` varchar(45) NOT NULL,
  `partName519` varchar(45) DEFAULT NULL,
  `currentPrice519` decimal(8,2) DEFAULT NULL,
  `qoh519` int DEFAULT NULL,
  PRIMARY KEY (`partNo519`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `X-pos519` (
  `poNo519` varchar(45) NOT NULL,
  `clientCompID519` varchar(45) DEFAULT NULL,
  `dateOfPO519` date DEFAULT NULL,
  `status519` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`poNo519`),
  KEY `pos519_ibfk_1` (`clientCompID519`),
  CONSTRAINT `pos519_ibfk_1` FOREIGN KEY (`clientCompID519`) REFERENCES `X-clients519` (`clientId519`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `X-lines519` (
  `poNo519` varchar(45) NOT NULL,
  `lineNo519` int unsigned DEFAULT NULL,
  `partNo519` varchar(45) NOT NULL,
  `qty519` int DEFAULT NULL,
  `priceOrdered519` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`poNo519`,`partNo519`),
  KEY `X-lines519_ibfk_1` (`poNo519`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Y-clients519` (
  `clientId519` varchar(45) NOT NULL,
  `clientName519` varchar(45) DEFAULT NULL,
  `clientCity519` varchar(45) DEFAULT NULL,
  `clientPassword519` varchar(45) DEFAULT NULL,
  `moneyOwed519` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`clientId519`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Y-parts519` (
  `partNo519` varchar(45) NOT NULL,
  `partName519` varchar(45) DEFAULT NULL,
  `currentPrice519` decimal(8,2) DEFAULT NULL,
  `qoh519` int DEFAULT NULL,
  PRIMARY KEY (`partNo519`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Y-pos519` (
  `poNo519` varchar(45) NOT NULL,
  `clientCompID519` varchar(45) DEFAULT NULL,
  `dateOfPO519` date DEFAULT NULL,
  `status519` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`poNo519`),
  KEY `pos519_ibfk_2` (`clientCompID519`),
  CONSTRAINT `pos519_ibfk_2` FOREIGN KEY (`clientCompID519`) REFERENCES `Y-clients519` (`clientId519`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Y-lines519` (
  `poNo519` varchar(45) NOT NULL,
  `lineNo519` int unsigned DEFAULT NULL,
  `partNo519` varchar(45) NOT NULL,
  `qty519` int DEFAULT NULL,
  `priceOrdered519` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`poNo519`,`partNo519`),
  KEY `Y-lines519_ibfk_1` (`poNo519`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Z-clients519` (
  `clientId519` varchar(45) NOT NULL,
  `clientName519` varchar(45) DEFAULT NULL,
  `clientCity519` varchar(45) DEFAULT NULL,
  `clientPassword519` varchar(45) DEFAULT NULL,
  `moneyOwed519` decimal(8,2) DEFAULT NULL,
  PRIMARY KEY (`clientId519`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Z-pos519` (
  `poNo519` varchar(45) NOT NULL,
  `clientCompID519` varchar(45) DEFAULT NULL,
  `dateOfPO519` date DEFAULT NULL,
  `status519` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`poNo519`),
  KEY `pos519_ibfk_3` (`clientCompID519`),
  CONSTRAINT `pos519_ibfk_3` FOREIGN KEY (`clientCompID519`) REFERENCES `Z-clients519` (`clientId519`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `Z-lines519` (
  `poNo519` varchar(45) NOT NULL,
  `lineNo519` varchar(45) DEFAULT NULL,
  `partNo519` varchar(45) NOT NULL,
  `qty519` int DEFAULT NULL,
  `priceOrdered519` decimal(8,2) DEFAULT NULL,
  `compOrdered519` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`poNo519`,`partNo519`),
  KEY `Z-lines519_ibfk_1` (`poNo519`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

