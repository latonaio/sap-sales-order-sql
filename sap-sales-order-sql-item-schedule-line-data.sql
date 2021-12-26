CREATE TABLE `sap_sales_order_item_schedule_line_data`
(
  `SalesOrder`                     varchar(10) NOT NULL,
  `SalesOrderItem`                 varchar(6) NOT NULL,
  `ScheduleLine`                   varchar(3) NOT NULL,
  `RequestedDeliveryDate`          varchar(80) DEFAULT NULL,
  `ConfirmedDeliveryDate`          varchar(80) DEFAULT NULL,
  `OrderQuantityUnit`              varchar(3) DEFAULT NULL,
  `ScheduleLineOrderQuantity`      varchar(15) DEFAULT NULL,
  `ConfdOrderQtyByMatlAvailCheck`  varchar(15) DEFAULT NULL,
  `DeliveredQtyInOrderQtyUnit`     varchar(15) DEFAULT NULL,
  `OpenConfdDelivQtyInOrdQtyUnit`  varchar(15) DEFAULT NULL,
  `CorrectedQtyInOrderQtyUnit`     varchar(15) DEFAULT NULL,
  `DelivBlockReasonForSchedLine`   varchar(2) DEFAULT NULL,
    PRIMARY KEY (`SalesOrder`, `SalesOrderItem`, `ScheduleLine`),
    CONSTRAINT `SAPSalesOrderItemScheduleLineData_fk` FOREIGN KEY (`SalesOrder`) REFERENCES `sap_sales_order_header_data` (`SalesOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
