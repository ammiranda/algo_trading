### Algo Trading Scaffold

#### Background

This repo contains the setup used to generate a docker image used by an AWS Lambda for algorithmic trading.

#### How To Build The Image

* Create a root level `app.py` file which contains your trading strategy with the entry point being a function titled `handler` which accepts an event and context object.
* Create a `.env` file at the root level which you can use to store various environmental variables and other secrets (like your `alpaca-py` API credentials). NOTE: I use `python-dotenv` to load them that is listed in the `requirements.txt`.
* If you use a virtual environment make sure to name it `venv` to take advantage of the exiting references in the `.dockerignore` and `.gitignore`.
* Run `docker build .` when in the root of this repo.

