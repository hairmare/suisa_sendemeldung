FROM python:3-alpine@sha256:97725c6081f5670080322188827ef5cd95325b8c69e401047f0fa0c21910042d

WORKDIR /src
COPY requirements.txt /src/
RUN ["pip","install","--no-cache-dir","-r","/src/requirements.txt"]
COPY . /src/

ENTRYPOINT ["/src/suisa_sendemeldung/suisa_sendemeldung.py"]
