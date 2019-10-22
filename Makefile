help:
	@echo "make release -- submit to pypi"

dist:
	rm -rf dist
	python setup.py sdist bdist_wheel
	rm -rf telega_notify.egg-info build
	ls -ldh dist/telega_notify-*

install:
	pip install dist/telega_notify-*.whl

release: release-pypi

release-pypi: dist
	twine upload dist/telega_notify-*

.PHONY: dist
