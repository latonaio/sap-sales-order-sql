CREATE TABLE `sap_sales_order_item_partner_data`
(
  `SalesOrder`           varchar(10) NOT NULL,
  `SalesOrderItem`       varchar(6) NOT NULL,
  `PartnerFunction`      varchar(2) NOT NULL,
  `Customer`             varchar(10) DEFAULT NULL,
  `Supplier`             varchar(10) DEFAULT NULL,
  `Personnel`            varchar(10) DEFAULT NULL,
  `ContactPerson`        varchar(10) DEFAULT NULL,
    PRIMARY KEY (`SalesOrder`, `SalesOrderItem`, `PartnerFunction`),
    CONSTRAINT `SAPSalesOrderItemPartnerData_fk` FOREIGN KEY (`SalesOrder`) REFERENCES `sap_sales_order_header_data` (`SalesOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
