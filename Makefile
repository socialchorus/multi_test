GEMFILES=$(shell ls ./gemfiles/**/Gemfile)

all: 
	$(foreach gemfile,$(GEMFILES),echo "\n\nTesting with: $(gemfile)...\n" && BUNDLE_GEMFILE=$(gemfile) bundle install && BUNDLE_GEMFILE=$(gemfile) ./test/run;)

clean:
	rm -f gemfiles/**/*.lock
