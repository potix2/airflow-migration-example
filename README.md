## What is this repository?

This repository is an example to explain about how to migrate to Airflow2.0.
It  https://finatext.connpass.com/event/214704/


## Setup

Execute the following script to generate .env file.

```shell script
./make_env.sh
```

After that you just run the following command to launch Airflow 1.10.5 with docker compose.

```shell script
docker compose up
```

Open `http://localhost:8080` with your browser.

### Run airflow upgrade_check

```shell script
docker exec -t `docker ps -q -f name=airflow-migration-example_webserver` airflow upgrade_check
```
