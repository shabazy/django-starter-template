This repository includes Django application with docker.

You can build docker image: 

``docker-compose up --build -d``

You can do health check with ``wait-for-it.sh``

Make virtual environment:

``make virtual``

Execute: 

``source venv/bin/activate``

then build requirements:

``make install``