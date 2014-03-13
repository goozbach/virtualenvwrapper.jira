PROJECT=virtualenvwrapper.jira

# Default target is to show help
help:
	@echo "sdist          - Source distribution"
	@echo "html           - HTML documentation"
	@echo "upload         - upload a new release to PyPI"


.PHONY: sdist
sdist: html
	python setup.py sdist

# Documentation
.PHONY: html
html:
	(cd docs && $(MAKE) html)

.PHONY: upload
upload:
	python setup.py sdist upload
