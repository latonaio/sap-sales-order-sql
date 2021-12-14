CREATE TABLE `sap-sales-order-header-partner-data`
(
  `SalesOrder`                   varchar(10) DEFAULT NULL,
  `PartnerFunction`              varchar(2) DEFAULT NULL,
  `Customer`                     varchar(10) DEFAULT NULL,
  `Supplier`                     varchar(10) DEFAULT NULL,
    PRIMARY KEY (`SalesOrder`),
    CONSTRAINT `SalesOrder_fk` FOREIGN KEY (`SalesOrder`) REFERENCES `sap-sales-order-header-data` (`SalesOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
