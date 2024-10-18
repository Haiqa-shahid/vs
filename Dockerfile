FROM python:3.9-slim

WORKDIR /usr/src/app

COPY index.html /usr/src/app/index.html

RUN pip install httpserver

EXPOSE 8000

CMD ["python", "-m", "http.server", "8000"]
