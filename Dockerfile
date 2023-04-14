FROM python:3.9

WORKDIR /code

COPY ./setup.py /code/setup.py

COPY ./requirements.txt /code/requirements.txt

COPY ./README.md /code/README.md

COPY ./src /code/src

RUN pip install /code 

COPY ./controller /code/controller

# Establish the runtime user (with no password and no sudo)
RUN useradd -m myapp
USER myapp

CMD ["uvicorn", "controller.controller:app", "--host", "0.0.0.0", "--port", "80"]
