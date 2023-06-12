FROM python:2.7
RUN apt-get update && apt-get install python-pip python-dev default-libmysqlclient-dev nano -y
RUN sed -i "348 i unsigned int reconnect;" /usr/include/mysql/mysql.h   # fix bug when install MySQL-python
RUN pip install MySQL-python