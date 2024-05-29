from snowflake.snowpark.session import Session 
from snowflake.snowpark.session import Session 
from snowflake.snowpark import DataFrame 
from snowflake.snowpark.functions import col
import json
import os

os.environ["HTTPS_PROXY"] = "http://proxy.anwb.local:8080"
os.environ["HTTP_PROXY"] = "http://proxy.anwb.local:8080"


def hello(session: Session) -> DataFrame:
    df = session.table("BI_DWH_DEV.GIT_INT.CUSTOMERS")
    df = df.groupBy("STATE").count()
    return df


# For local debugging
if __name__ == "__main__":
    session = Session.builder.configs(json.load(
      open("C://Users/p289932/.snowsql/snowflake_connection.json"))).create()
    print (hello (session).show())