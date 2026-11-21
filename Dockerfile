FROM python:3.11-slim
WORKDIR /app

# ---- Upgrade pip & core tools ----
RUN pip install --upgrade pip setuptools wheel

COPY lightnovel-crawler==3.10.1.txt .
RUN pip install -r lightnovel-crawler==3.10.1.txt

COPY psycopg2-binary==2.9.11.txt .
RUN pip install -r psycopg2-binary==2.9.11.txt

COPY pyTelegramBotAPI==4.29.1.txt .
RUN pip install -r pyTelegramBotAPI==4.29.1.txt

COPY main.py .

RUN mkdir -p novels

CMD ["python", "main.py"]
