all:
	echo "Nothing here yet."

install:
	python3 setup.py install

dev:
	# Create virtualenv
	python3.10 -m venv .venv --upgrade-deps
	.venv/bin/pip3 install -r requirements.txt
	.venv/bin/pre-commit install

lint:
	.venv/bin/ruff .

format:
	.venv/bin/black .
	.venv/bin/isort .
