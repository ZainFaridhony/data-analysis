import pandas as pd
from pathlib import Path


def test_order_columns():
    csv_path = Path(__file__).resolve().parents[1] / "Exploratory Data Anaylysis with Python for Beginner" / "order.csv"
    df = pd.read_csv(csv_path)
    expected = [
        "order_id",
        "quantity",
        "product_id",
        "price",
        "seller_id",
        "freight_value",
        "customer_id",
        "order_status",
        "purchase_date",
        "payment_type",
        "product_category_name",
        "product_weight_gram",
    ]
    assert list(df.columns) == expected
