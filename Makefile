build: install migrate run

install:
	pip install -r requirements/dev.txt

migrate:
	python manage.py makemigrations && python manage.py migrate

run:
	python manage.py runserver

virtual:
	virtualenv --python=$(which python3.6) venv