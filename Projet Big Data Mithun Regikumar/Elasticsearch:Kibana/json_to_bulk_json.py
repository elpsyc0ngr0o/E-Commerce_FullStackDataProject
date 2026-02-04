input_file = "/Users/mithunregikumar/PycharmProjects/BIGDATAPROJECT/products_by_orders_single_json/products_by_orders_single.json"
output_file = "/products_by_orders_single_bulk_json/products_by_orders_single_bulk.json"

with open(input_file, "r") as fin, open(output_file, "w") as fout:
    for line in fin:
        line = line.strip()
        if line:
            fout.write('{"index":{}}\n')
            fout.write(line + "\n")
