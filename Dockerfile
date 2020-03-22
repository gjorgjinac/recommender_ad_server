FROM python:3
MAINTAINER Gjorgjina Cenikj "gjorgjinac@gmail.com"
COPY ./ad_server /ad_server
#RUN apt-get update -y && apt_get install -y python-pip python-dev
#COPY ./requirements.txt /ad_server/requirements.txt
WORKDIR /ad_server
RUN pip install -r requirements.txt
COPY . /ad_server
ENTRYPOINT [ "python" ]
CMD ["adserver_main.py"]