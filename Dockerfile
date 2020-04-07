FROM python:3.7-slim-buster
ENV PYTHONBUFFERED 1
COPY ./src/requirements.txt /app/requirements.txt
WORKDIR /app
RUN pip install -r requirements.txt
COPY src .
ENTRYPOINT ["python"]
CMD ["hello.py"]
