FROM --platform=linux/amd64 python:3.9-slim

WORKDIR /app
COPY app.py .

RUN pip install flask

ENV FLASK_APP=app.py
EXPOSE 5000

CMD ["python", "app.py"]
