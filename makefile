all:
	make run
	make test

diff:
	python RunWCDB1.py < taylor-RunWCDB1.in.xml > RunWCDB1.tmp
	diff taylor-RunWCDB1.out.xml RunWCDB1.tmp

lint: 
<<<<<<< HEAD
	xmllint --noout -schema taylor-WCDB1.xsd.xml hjh558Run.in.xml
=======
	xmllint --noout -schema taylor-WCDB1.xsd.xml AlexXML.xml
>>>>>>> Validating and Fixing Instances


doc:
	pydoc -w WCDB1

log:
	git log > WCDB1.log

run:
	RunWCDB1.py < RunWCDB1.in.xml

test:
	python taylor-TestWCDB1.py 

test-save:
	python taylor-TestWCDB1.py >& RunWCDB1.out

turnin-list:
	turnin --list hychyc07 cs327epj3

turnin-submit:
	turnin --submit hychyc07 cs327epj3 WCDB1.zip

turnin-verify:
	turnin --verify hychyc07 cs327epj3

zip:
	zip -r WCDB1.zip makefile                             \
	RunWCDB1.in.xml RunWCDB1.py RunWCDB1.out.xml          \
	TestWCDB1.py TestWCDB1.out                            \
	WCDB1.html WCDB1.log WCDB1.py WCDB1.xml WCDB1.xsd.xml

clean:
	rm -f *.pyc
	rm -f *.tmp