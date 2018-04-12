FROM ubuntu:14.04
RUN apt-get update -y
RUN apt-get install -y git htop nano python3-pip python3-setuptools python3 build-essential sqlite3 libsqlite3-dev bcrypt libffi-dev libssl-dev python-dev libffi-dev libssl-dev
RUN easy_install3 pip
RUN pip install --upgrade setuptools
RUN mkdir /VegaTax
COPY . /VegaTax/
WORKDIR /VegaTax/
RUN pip3 install -r requirements.txt
RUN export TERM=xterm
ENTRYPOINT ["python3"]
CMD ["reports.py"]