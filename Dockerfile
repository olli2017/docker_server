FROM python:3

copy echo-server.py /

EXPOSE 65432
ENTRYPOINT ["python", "echo-server.py"]