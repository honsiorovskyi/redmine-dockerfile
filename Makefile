TRAVIS_COMMIT ?= 7f619347642c34ab9361671b400dc9539475e625
TRAVIS_BRANCH ?= master

QUAY_DATA = '{"commit": "$(TRAVIS_COMMIT)", "ref": "refs/heads/$(TRAVIS_BRANCH)", "default_branch": "master"}'


deploy:
	curl -XPOST -H "Content-Type: application/json" $(QUAY_URL) -d $(QUAY_DATA)
