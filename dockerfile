FROM python:3.12

WORKDIR /app

COPY . /app

RUN pip3 install -r requirement.txt

EXPOSE 5000

CMD ["python", "app.py"]