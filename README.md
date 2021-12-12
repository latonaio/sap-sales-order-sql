# sap-sales-order-sql 

sap-sales-order-sql は、主にエッジアプリケーションにおいて、SAPと連携された受注データを保存するSQLテーブルを作成するためのレポジトリです。    
sap-sales-order-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。    

## 前提条件  
sap-sales-order-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。    
クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_SALES_ORDER_SRV_0001/overview     
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。    

## sqlの設定ファイル

sap-sales-order-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* sap-sales-order-sql-header-data.sql（SAP 受注 - ヘッダデータ）
* sap-sales-order-sql-header-partner-data.sql（SAP 受注 - ヘッダ取引先データ）
* sap-sales-order-sql-item-data.sql（SAP 受注 - 明細データ）  
* sap-sales-order-sql-item-pricing-element-data.sql（SAP 受注 - 明細価格条件データ）  
* sap-sales-order-sql-item-schedule-line-data.sql（SAP 受注 - 明細納入日程行データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  