install-dependencies:
	pip install -U pip
	pip install .[dev]

test:
	pytest --cov dramatiq_sqs --cov-report term-missing --cov-report xml


###
# Lint section
###
_flake8:
	@flake8 --show-source .

_isort:
	@isort --check-only .

_black:
	@black --diff --check .

_isort_fix:
	@isort .

_black_fix:
	@black .


lint: _flake8 _isort _black
format-code: _isort_fix _black_fix 