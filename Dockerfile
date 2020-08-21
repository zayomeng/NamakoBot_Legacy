FROM python:3-slim-buster
WORKDIR /workdir
ADD . .
RUN pip config set global.index-url https://mirrors.ustc.edu.cn/pypi/web/simple
RUN pip install -r requirements.txt
ENTRYPOINT [ "python", "run.py"]
