import airflow
from airflow import DAG
from airflow.operators.dummy_operator import DummyOperator
from airflow.operators.http_operator import SimpleHttpOperator
from airflow.utils.dates import days_ago


with DAG(
        dag_id="migration-sample",
        schedule_interval="@daily",
        start_date=days_ago(1),
        catchup=False,
) as dag:
    begin = DummyOperator(task_id="begin")
    op = SimpleHttpOperator(
        task_id="get_catfact",
        http_conn_id="catfact",
        endpoint="fact",
        method="GET",
        headers={"Content-Type": "application/json"},
        xcom_push=True,
    )
    end = DummyOperator(task_id="end")

    begin >> op >> end
