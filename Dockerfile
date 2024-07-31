FROM python:3.10-slim-buster

RUN apt-get update && apt-get install -y build-essential libpq-dev && rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade pip
# copy all code to code dir
COPY . /code

RUN chmod +x /code

RUN pip install --np-cache-dir --upgrade -r code/requirements.txt

# EXPOSE 8005
# WORKDIR /code
# ENV PYTHONPATH "${PYTHONPATH}:/code"
# CMD pip install -e .
