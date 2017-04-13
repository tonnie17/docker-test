FROM django:latest

COPY ./app /usr/src/app

RUN cd /usr/src/app && \
    pip install -r requirement.txt && \
    python manage.py makemigrations && \
    python manage.py migrate

CMD python /usr/src/app/manage.py runserver 0.0.0.0:8000
