FROM python:3.7.6

WORKDIR /home/

RUN git clone https://github.com/lee-JunR/progmatic

WORKDIR /home/progmatic/

RUN pip install -r requirements.txt

RUN python manage.py migrate

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
