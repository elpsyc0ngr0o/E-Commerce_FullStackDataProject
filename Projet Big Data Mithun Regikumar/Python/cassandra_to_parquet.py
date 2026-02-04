from pyspark.sql import SparkSession

def export_cassandra_table_to_parquet(cassandra_host, keyspace, table, output_path):
    spark = (
        SparkSession.builder
        .appName("ExportCassandraToParquet")
        .config("spark.jars.packages", "com.datastax.spark:spark-cassandra-connector_2.13:3.5.1")
        .config("spark.cassandra.connection.host", cassandra_host)
        .config("spark.cassandra.connection.port", "9042")
        .getOrCreate()
    )
    df = (
        spark.read
        .format("org.apache.spark.sql.cassandra")
        .options(table=table, keyspace=keyspace)
        .load()
    )

    df.coalesce(1).write.mode("overwrite").parquet(output_path)
    spark.stop()

if __name__ == "__main__":
    cassandra_host = "localhost"
    keyspace = "bigdataproject"
    table = "users_orders"
    output_path = "/Users/mithunregikumar/PycharmProjects/BIGDATAPROJECT/users_orders_single"

    export_cassandra_table_to_parquet(cassandra_host, keyspace, table, output_path)
