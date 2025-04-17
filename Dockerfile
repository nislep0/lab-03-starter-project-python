FROM python:3.12-bullseye
WORKDIR /app
COPY . .
RUN pip install --no-cache-dir -r requirements.txt
CMD ["uvicorn", "spaceship.main:app", "--host", "0.0.0.0", "--port", "8000"]

