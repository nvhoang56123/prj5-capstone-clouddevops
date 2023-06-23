## The Makefile includes instructions on environment setup and lint tests
# Create and activate a virtual environment
# Install dependencies in requirements.txt
# Dockerfile should pass hadolint
# app.py should pass pylint
# (Optional) Build a simple integration test

setup:
	# Create python virtualenv & source it
	python3 -m venv venv

	# Jump into virtualenv
	. venv/bin/activate
	make install

install:
	# This should be run from inside a virtualenv
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	# Additional, optional, tests could go here
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	# See local hadolint install instructions:   https://github.com/hadolint/hadolint
	# This is linter for Dockerfiles

	# Download hadolint and save it at /bin/hadolint
	wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v1.16.3/hadolint-Linux-x86_64 &&\
	# chmod to allow hadolint executable   
	chmod +x /bin/hadolint
	# Then it's time to hadolint Dockerfile
	/bin/hadolint Dockerfile
	
	# Install pylint
	pip install pylint
	# chmod to allow pylint executable
	chmod +x  venv/bin/pylint
	# Then it's time to pylint app.py. Ignore couple of policies
	venv/bin/pylint --disable=R,C,W,E app.py 

all: install lint test