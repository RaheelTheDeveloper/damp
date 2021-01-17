# Project-in-CS
Decentralized Air Quality Prediction using Machine Learning (DAMP)


## Getting Started

These instructions will get you a copy of the project up and running on your local or Virtual machines for execution development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

You need to use Ubuntu 20.04 in Cloud or install Python 3.8 in your local machine explicitly. 
Also you need to download and set up Docker with below bash file command. 

```
sudo bash docker.sh
```

### Installing
1) If you want to create your own container in Cloud, you can set up your Virtual Machine using cloud/cloud-config file. 
And you find your container is already running when you check the output with below command.

```
curl -i http://<your-public-ip>:5000/federated
```

For example, we already set up a VM with a public ip of 130.238.29.31. You can run the command until the VM expires.

```
curl -i http://130.238.29.31:5000/federated
```

2) If you want to run it in your local machine. You can download Docker image of our current version of damp from this link: [DockerHub](https://hub.docker.com/r/19031923/federated-damp)
after you login.
```
sudo bash
docker login
docker pull 19031923/federated-damp
```

You can check if you downloaded it correctly by executing below command and see there there exists imageID with eb73885f1ed6

```
docker images
```

## Running the system

In order to run the container image, run 

```
docker run -d -p 5000:5000 19031923/federated-damp:latest2
```
and check if it is working with your public ip by 

```
docker container ls -a
curl -i http://<your-public-ip>:5000/federated
```



## Development

In order to develop damp project further, first get the name of your running container other than ubuntu.
 
```
docker container ls -a
```
and stop current running container to free port of 5000 by

```
docker container stop 
```
and then go into the container where you want to change the preprocessing or model files by

```
docker exec -it <container-name> /bin/bash
```
Lastly, run your custom container again with commands in "Running the system section". 

## Built With

* [Tensorflow](https://www.tensorflow.org/) -  The core open source library to help you develop and train ML models.
* [TensorflowFederated](https://www.tensorflow.org/federated) - Open-source framework for machine learning on decentralized data
* [FEDn](https://github.com/scaleoutsystems/fedn) - Scalable federated learning in production 
* [Flutter](https://flutter.dev/) - The GoogleUI Kit for mobile and web applications
* [Tflite](https://www.tensorflow.org/lite) - Open source deep learning framework for on-device inference.
* [Docker](https://www.docker.com/) - The set of PaaS products that deliver software in packages called containers.

## Authors

See also the list of [contributors](https://github.com/RaheelTheDeveloper/damp/blob/main/contributors.md) who participated in this project.

## License

This project is licensed under the UnLicense - see the [LICENSE.md](https://github.com/RaheelTheDeveloper/damp/blob/main/LICENSE) file for details

## Acknowledgments
We are really thankful to our supervisors below. 

* Konstantinos Vandikas
* Vera van Zoest
* Tobias Mages
