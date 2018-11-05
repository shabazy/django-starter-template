FROM python:3.6-jessie
ENV PYTHONUNBUFFERED 1
RUN set -x && \
    apt-get update && \
    apt-get install --no-install-recommends -y net-tools sudo
RUN useradd -ms /bin/bash shabazy
WORKDIR /code
ADD . /code
RUN pip install -r requirements/dev.txt
ENV DJANGO_SETTINGS_MODULE=shopping.settings.local
RUN chmod +x /code/docker-entrypoint.sh
ENTRYPOINT ["./docker-entrypoint.sh"]
USER shabazy