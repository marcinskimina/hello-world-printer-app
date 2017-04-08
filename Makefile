.PHONY: test deps

deps:
	pip install -r requirements.txt; \
	pip install -r test_requirements.txt

lint:
	flake8 hello-world test

run:
	python main.py

test:
	PYTHONPATH=. py.test  --verbose -s
