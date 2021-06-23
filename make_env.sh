#!/bin/bash

FERNET_KEY=$(docker run apache/airflow:1.10.15-python3.7 python -c 'from cryptography.fernet import Fernet; fk = Fernet.generate_key(); print(fk.decode())')
echo "FERNET_KEY=${FERNET_KEY}" > .env
