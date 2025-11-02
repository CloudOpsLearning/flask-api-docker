# using multi-stage method

# 1 for installing dependencies
FROM python:3.9.25-slim AS base

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# 2 for builder

FROM python:3.11-alpine AS builder

WORKDIR /app

COPY --from=base /app /app

RUN pip install --no-cache-dir -r requirements.txt
COPY . .

EXPOSE 5000

# Étape 6 : lancer Gunicorn en mode production
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]


# CMD [ "python", "app.py" ]
