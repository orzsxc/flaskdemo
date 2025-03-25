FROM python:3.7.3-slim-stretch

ENV PYTHONUNBUFFERED 1
ENV PYTHONDONTWRITEBYTECODE 1

WORKDIR /app

COPY ./requirements.txt /tmp/
COPY app .

RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple some-package --upgrade pip \
  && pip install -r /tmp/requirements.txt
CMD ["python", "app.py"]

