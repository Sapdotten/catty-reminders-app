FROM python:3.11-slim as base

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

FROM base as production

COPY . .

EXPOSE 8181
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8181"]


FROM base as testing

RUN pip install pytest playwright && \
    playwright install-deps && \
    playwright install

COPY . .

EXPOSE 8181
CMD ["uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8181"]


