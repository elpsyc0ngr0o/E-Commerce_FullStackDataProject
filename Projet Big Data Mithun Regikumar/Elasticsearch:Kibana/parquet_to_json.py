import pandas as pd

parquet_path = "/Users/mithunregikumar/PycharmProjects/BIGDATAPROJECT/users_orders_single/part-00000-37393a34-40fb-4a4e-af34-391abc8f15a1-c000.snappy.parquet"
output_path = "/Users/mithunregikumar/PycharmProjects/BIGDATAPROJECT/users_orders_single_json/users_orders_single1.json"

def parquet_to_json(parquet_path, output_path):

    df = pd.read_parquet(parquet_path)
    df.to_json(output_path, orient="records", lines=True)

if __name__ == "__main__":
    parquet_to_json(parquet_path, output_path)
