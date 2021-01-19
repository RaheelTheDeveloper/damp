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
RUN sudo apt install unzip
WORKDIR /damp/federated/v1.2/
RUN sudo unzip -j 2015-2019_sensorData_metrologicalData.zip
WORKDIR /../../cloud/
EXPOSE 5000
ENV PATH="${PATH}:/usr/games/"
CMD ["python3","app.py"]
