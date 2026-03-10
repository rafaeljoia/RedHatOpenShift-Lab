FROM python:3.11-slim

WORKDIR /app

COPY api/requirements.txt .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "api.app:app"]