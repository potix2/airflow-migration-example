## What is this repository?

This repository is an example to explain about how to migrate to Airflow 2.0.
It was demonstrated in [this seminar](https://finatext.connpass.com/event/214704/). That material is [here](https://www.slideshare.net/potix2_jp/airflow-20-migration) (Japanese Only).


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
