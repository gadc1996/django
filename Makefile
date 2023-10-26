app:
	python src/manage.py startapp $(name)

serve:
	python src/manage.py runserver

setup:
	pip3 install -r requirements.txt
	
update-dependencies:
	pip3 freeze > requirements.txt