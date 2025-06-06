FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 3000

CMD ["briefer", "serve", "--host", "0.0.0.0", "--port", "3000"]
