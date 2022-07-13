FROM python:3.8-alpine
LABEL AUTHOR "Evyatar Orbach"
EXPOSE 8080
WORKDIR /project
COPY ./requirements.txt ./requirements.txt
RUN pip install -r requirements.txt
COPY ./webapp.py ./webapp.py
ENTRYPOINT [ "python" ]
CMD [ "webapp.py" ]