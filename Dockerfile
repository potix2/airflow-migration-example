FROM apache/airflow:1.10.15-python3.7
RUN pip install apache-airflow-upgrade-check
Add requirements.txt /opt/airflow/requirements.txt
RUN pip install -r /opt/airflow/requirements.txt
