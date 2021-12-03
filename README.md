# La Nuit de l'Info 2021
> Benoît Kezel | Florian Charlaix

## Dependencices
* python3
* python3-dev
* python3-pip
* python3-venv
* libpq-dev

**Example**:
```bash
apt install python3 python3-dev python3-pip python3-venv libpq-dev
```

## Database
You need to copy settings.py.exemple to settings.py and complete the database connexion (PostgresSQL)

You can add a mail server for user registration confirmation

## Installation
```bash
python3 -m venv venv
. venv/bin/activate
pip install -r requirements.txt 
```

## Start th server
```bash
python manage.py runserver 8000
```
