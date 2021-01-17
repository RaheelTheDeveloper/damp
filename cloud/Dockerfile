FROM ubuntu
RUN apt-get update
RUN apt-get -y upgrade 
RUN apt-get install -y git
RUN apt-get install -y python3-pip
RUN pip3 install --upgrade pip
RUN pip3 install numpy
RUN pip3 install nest_asyncio
RUN pip3 install pandas
RUN pip3 install sklearn
RUN pip3 install tensorflow==2.2.0
RUN pip3 install keras
RUN pip3 install tensorflow-federated
RUN git clone https://github.com/RaheelTheDeveloper/damp.git
RUN pip3 install flask
WORKDIR /damp/federated/v1.1/
EXPOSE 5000
ENV PATH="${PATH}:/usr/games/"
CMD ["python3","app.py"]
