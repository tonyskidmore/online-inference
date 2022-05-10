# online-inference

Test online inference Python docker built using [Machine Learning Prediction in Real Time Using Docker and Python REST APIs with Flask](https://towardsdatascience.com/machine-learning-prediction-in-real-time-using-docker-and-python-rest-apis-with-flask-4235aa2395eb).

## Build and Test summary

````bash

docker build -t online-inference -f Dockerfile .

docker run -d -it --name online-inference -p 5000:5000 online-inference

curl http://0.0.0.0:5000/line/232
curl http://0.0.0.0:5000/prediction/232
curl http://0.0.0.0:5000/score

docker logs online-inference

docker image ls

````

## Pull from GitHub Container Registry

````bash

docker pull ghcr.io/tonyskidmore/online-inference:a686167be45e634bf91bf8569c0a8f08ff1def78

````

Where `a686167be45e634bf91bf8569c0a8f08ff1def78` is the commit hash version of the container you want to pull.
