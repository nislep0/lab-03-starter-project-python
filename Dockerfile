FROM python:3.12-bullseye
WORKDIR /app
COPY requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8000"]

