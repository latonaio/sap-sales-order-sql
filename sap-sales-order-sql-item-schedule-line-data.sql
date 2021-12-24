CREATE TABLE `sap-sales-order-item-schedule-line-data`
(
  `SalesOrder`                     varchar(10) NOT NULL,
  `SalesOrderItem`                 varchar(6) NOT NULL,
  `ScheduleLine`                   varchar(3) NOT NULL,
  `RequestedDeliveryDate`          date DEFAULT NULL,
  `ConfirmedDeliveryDate`          date DEFAULT NULL,
  `OrderQuantityUnit`              varchar(3) DEFAULT NULL,
  `ScheduleLineOrderQuantity`      varchar(15) DEFAULT NULL,
  `ConfdOrderQtyByMatlAvailCheck`  varchar(15) DEFAULT NULL,
  `DeliveredQtyInOrderQtyUnit`     varchar(15) DEFAULT NULL,
  `OpenConfdDelivQtyInOrdQtyUnit`  varchar(15) DEFAULT NULL,
  `CorrectedQtyInOrderQtyUnit`     varchar(15) DEFAULT NULL,
  `DelivBlockReasonForSchedLine`   varchar(2) DEFAULT NULL,
    PRIMARY KEY (`SalesOrder`, `SalesOrderItem`, `ScheduleLine`),
    CONSTRAINT `SalesOrder_fk` FOREIGN KEY (`SalesOrder`) REFERENCES `sap-sales-order-header-data` (`SalesOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
