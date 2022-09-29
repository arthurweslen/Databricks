-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### Carregando arquivo CSV em python

-- COMMAND ----------

-- MAGIC %python
-- MAGIC clientes = spark.read.format('csv').options(header='true', inferSchema='true',delimiter=';').load('/FileStore/tables/carga/clientes_cartao.csv')
-- MAGIC display(clientes)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Carregando arquivo CSV em Scala

-- COMMAND ----------

-- MAGIC %scala
-- MAGIC  val cliente = spark.read.format("csv")
-- MAGIC  .option("header", "true")
-- MAGIC  .option("inferSchema", "true")
-- MAGIC  .option("delimiter", ";")
-- MAGIC  .load("/FileStore/tables/carga/clientes_cartao.csv")
-- MAGIC 
-- MAGIC display(cliente)

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Trabalhando com o arquivo carregado em Scala no SQL

-- COMMAND ----------

-- MAGIC %scala
-- MAGIC cliente.createOrReplaceTempView("dados_cliente")

-- COMMAND ----------

-- MAGIC %md
-- MAGIC ### Exibindo os dados no SQL

-- COMMAND ----------

-- MAGIC %sql
-- MAGIC select * from dados_cliente
