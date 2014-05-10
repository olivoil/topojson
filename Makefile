BUMP = ./node_modules/.bin/bump

patch:
	${BUMP} patch

minor:
	${BUMP} minor

release:
	VERSION=`node -p "require('./component.json').version"` && \
	git changelog --tag $$VERSION && \
	git release $$VERSION

.PHONY: patch release minor
