app:
	cd src && \
	python manage.py startapp $(name)

migrations:
	python src/manage.py makemigrations
	
migrate:
	python src/manage.py migrate

serve:
	python src/manage.py runserver

update-dependencies:
	pip3 freeze > requirements.txt

install:
	pip install $(name)
	make update-dependencies

setup:
	pip3 install -r requirements.txt
	
superuser:
	python src/manage.py createsuperuser
	
shell:
	python src/manage.py shell
	
test:
	python src/manage.py test $(name)