#!/bin/bash

echo "🚀 Registering Jakarta Connector..."
curl -X POST http://localhost:8083/connectors \
  -H "Content-Type: application/json" \
  -d '{
    "name": "source-jakarta",
    "config": {
      "connector.class": "io.debezium.connector.sqlserver.SqlServerConnector",
      "database.hostname": "sqlserver-jakarta",
      "database.port": "1433",
      "database.user": "sa",
      "database.password": "SuperStrong!Password123",
      "database.names": "RideDB",
      "topic.prefix": "id.jakarta",
      "database.encrypt": "false",
      "table.include.list": "dbo.RideRequests",
      "schema.history.internal.kafka.bootstrap.servers": "kafka:29092",
      "schema.history.internal.kafka.topic": "schema-history.jakarta"
    }
  }'
echo -e "\n"
sleep 2

echo "🚀 Registering Semarang Connector..."
curl -X POST http://localhost:8083/connectors \
  -H "Content-Type: application/json" \
  -d '{
    "name": "source-semarang",
    "config": {
      "connector.class": "io.debezium.connector.sqlserver.SqlSeronnector",
      "database.hostname": "sqlserver-semarang",
      "database.port": "1433",
      "database.user": "sa",
      "database.password": "SuperStrong!Password123",
      "database.names": "RideDB",
      "topic.prefix": "id.semarang",
      "database.encrypt": "false",
      "table.include.list": "dbo.RideRequests",
      "schema.history.internal.kafka.bootstrap.servers": "kafka:29092",
      "schema.history.internal.kafka.topic": "schema-history.semarang"
    }
  }'
echo -e "\n"
sleep 2

echo "🚀 Registering Surabaya Connector..."
curl -X POST http://localhost:8083/connectors \
  -H "Content-Type: application/json" \
  -d '{
    "name": "source-surabaya",
    "config": {
      "connector.class": "io.debezium.connector.sqlserver.SqlServerConnector",
      "database.hostname": "sqlserver-surabaya",
      "database.port": "1433",
      "database.user": "sa",
      "database.password": "SuperStrong!Password123",
      "database.names": "RideDB",
      "topic.prefix": "id.surabaya",
      "database.encrypt": "false",
      "table.include.list": "dbo.RideRequests",
      "schema.history.internal.kafka.bootstrap.servers": "kafka:29092",
      "schema.history.internal.kafka.topic": "schema-history.surabaya"
    }
  }'
echo -e "\n\n✅ All regional connectors registered successfully!"
