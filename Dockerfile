# syntax=docker/dockerfile:1
FROM python:3.8

WORKDIR /app
RUN mkdir template
COPY  template/* template/ 
COPY  app.py . 
RUN pip3 install authlib
RUN pip3 install flask
RUN pip3 install requests

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
