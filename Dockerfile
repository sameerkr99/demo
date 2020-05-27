FROM python:3.5
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt
RUN apt update && apt upgrade -y
#RUN apt install redis-server -y

# RUN apt-get install --reinstall systemd -y
# RUN apt-get install supervisor -y
# COPY celery.conf /etc/supervisor/conf.d/celery.conf
# RUN apt install nano
# COPY rabbitmq_setup.sh /code/
# RUN sh rabbitmq_setup.sh
COPY . /code/

# RUN python compile.py build_ext --inplace
# RUN sh delete.sh
# RUN rm delete.sh
# COPY manage.py /code/

# RUN chmod +x run.sh
# ENTRYPOINT [ "bash", "run.sh" ]
