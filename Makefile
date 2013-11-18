default: devel test

devel: bin/buildout buildout-cache/downloads
	[ -f bin/develop ] && bin/develop up || true
	bin/buildout -c devel.cfg

test:
	bin/test -s plone.intranet.suite
	bin/flake8 src/plone

travis: travis_build

travis_build: bin/buildout buildout-cache/downloads
	bin/buildout -c buildout.cfg

bin/buildout: bin/python
	bin/easy_install zc.buildout==1.6.3
	bin/easy_install distribute==0.6.28

bin/python:
	virtualenv --clear --no-site-packages --distribute .

buildout-cache/downloads:
	[ -d buildout-cache ] || mkdir -p buildout-cache/downloads

clean:
	rm -rf bin/* .installed.cfg parts/download
