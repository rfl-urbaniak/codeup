


lint: FORCE
	./scripts/lint.sh

format:
	./scripts/clean.sh

tests: lint FORCE
	pytest -v tests


publish: FORCE
	./scripts/clean.sh
	jb build --all codeup/
	ghp-import -n -p -f codeup/_build/html


FORCE: