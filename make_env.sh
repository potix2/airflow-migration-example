#!/bin/bash

FERNET_KEY=$(python -c 'from cryptography.fernet import Fernet; fk = Fernet.generate_key(); print(fk.decode())')
echo "FERNET_KEY=${FERNET_KEY}" > .env