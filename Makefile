install:
		pip install --upgrade pip &&\
				pip install -r requirements.txt
		
test:
		#python -m pytest -vv --cov=myrepolib tests/*.py
		#python -m pytest --nbval notebook.ipynb
		
validate-circleci:
		circleci config process .circleci/config.yml
		
run-circleci-local:
		circleci local execute
		
lint:
		# hadolint *********** 
		pylint --disable=R,C app.py
		
all: instal llint test 