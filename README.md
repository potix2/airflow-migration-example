## What is this repository?

## Setup

Before executing the following command

```shell script
pip install apache-airflow==1.10.15
./make_env.sh
```

```shell script
docker compose up
```


Open `http://localhost:8080` with your browser.

### Run airflow upgrade_check

```shell script
docker exec -t `docker ps -q -f name=airflow-migration-example_webserver` airflow upgrade_check
```
