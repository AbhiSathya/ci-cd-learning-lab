FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app app
COPY pytest.ini .


CMD ["python", "-c", "from app.main import add; print(add(2,3))"]
