# online-inference

Test online inference Python docker built using [Machine Learning Prediction in Real Time Using Docker and Python REST APIs with Flask](https://towardsdatascience.com/machine-learning-prediction-in-real-time-using-docker-and-python-rest-apis-with-flask-4235aa2395eb).

## Build and Test summary

````bash

docker build -t online-inference -f Dockerfile .

docker run -d -it --name online-inference -p 80:5000 online-inference

curl http://0.0.0.0
curl http://0.0.0.0/line/232
curl http://0.0.0.0/prediction/232
curl http://0.0.0.0/score

docker logs online-inference

docker image ls

````

## Pull from GitHub Container Registry

````bash

docker pull ghcr.io/tonyskidmore/online-inference:a2c172d050857b5832d20f1d2d1857b3f7a02ff3

````

Where `a2c172d050857b5832d20f1d2d1857b3f7a02ff3` is the commit hash version of the container you want to pull.
