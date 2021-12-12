CREATE TABLE `sap-sales-order-item-pricing-element-data`
(
  'SalesOrder'                     varchar(10) DEFAULT NULL,
  'SalesOrderItem'                 varchar(6) DEFAULT NULL,
  'PricingProcedureStep'           varchar(3) DEFAULT NULL,
  'PricingProcedureCounter'        varchar(3) DEFAULT NULL,
  'ConditionType'                  varchar(4) DEFAULT NULL,
  'PriceConditionDeterminationDte' date DEFAULT NULL,
  'ConditionCalculationType'       varchar(3) DEFAULT NULL,
  'ConditionBaseValue'             varchar(13) DEFAULT NULL,
  'ConditionRateValue'             varchar(13) DEFAULT NULL,
  'ConditionCurrency'              varchar(5) DEFAULT NULL,
  'ConditionQuantity'              varchar(6) DEFAULT NULL,
  'ConditionQuantityUnit'          varchar(3) DEFAULT NULL,
  'ConditionCategory'              varchar(1) DEFAULT NULL,
  'PricingScaleType'               varchar(1) DEFAULT NULL,
  'ConditionRecord'                varchar(10) DEFAULT NULL,
  'ConditionSequentialNumber'      varchar(3) DEFAULT NULL,
  'TaxCode'                        varchar(2) DEFAULT NULL,
  'ConditionAmount'                varchar(13) DEFAULT NULL,
  'TransactionCurrency'            varchar(5) DEFAULT NULL,
  'PricingScaleBasis'              varchar(3) DEFAULT NULL,
  'ConditionScaleBasisValue'       varchar(13) DEFAULT NULL,
  'ConditionScaleBasisUnit'        varchar(3) DEFAULT NULL,
  'ConditionScaleBasisCurrency'    varchar(5) DEFAULT NULL,
  'ConditionIsManuallyChanged'     tinyint(1) DEFAULT NULL,
    PRIMARY KEY (`SalesOrder`, `SalesOrderItem`, `PricingProcedureStep`, `PricingProcedureCounter`)
    CONSTRAINT `SalesOrder_fk` FOREIGN KEY (`SalesOrder`) REFERENCES `sap-sales-order-header-data` (`SalesOrder`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
