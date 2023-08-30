FROM python:3.10

ENV SECRET_KEY=rdd3g7+@w@_zd#^#uxywgdf&3#nn8+_e3s3s2_$q@i=tk6^o5- \
    DEBUG=False \
    ALLOWED_HOSTS=* \
#    DB_ENGINE=django.db.backends.sqlite3 \
#    DB_NAME=db.sqlite3

WORKDIR /api

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

#RUN pip install -r requirements.txt && \
#    python3 manage.py makemigrations && \
#    python3 manage.py migrate --run-syncdb

EXPOSE 8000

#CMD gunicorn stocks_products.wsgi -b 0.0.0.0:8000
