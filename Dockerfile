FROM python:3.11-slim

WORKDIR /app

COPY api/requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["gunicorn", "api.app:app", "--bind", "0.0.0.0:8080", "--worker-tmp-dir", "/tmp"]