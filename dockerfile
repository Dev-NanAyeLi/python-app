FROM python:3.13.1

WORKDIR /app

COPY . /app

run pip install -r requirement.txt

EXPOSE 5000

CMD ["python", "app.py"]