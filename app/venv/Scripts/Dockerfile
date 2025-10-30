FROM python:3.11-alpine

WORKDIR /app

COPY requirements.txt .

RUN apk update && apk add --no-cache \
    python3-dev \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev \
    && python3 -m venv /venv \
    && /venv/bin/pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# RUN /venv/bin/pip install --no-cache-dir -r requirements.txt \
#     && /venv/bin/activate



EXPOSE 5000

CMD ["python3", "app.py"]