FROM python:3

RUN pip install django django-jazzmin django-ckeditor pillow

COPY . .

RUN python manage.py migrate

CMD ["python","manage.py","runserver","0.0.0.0:8000"]