GEMFILES=$(shell ls gemfiles/**/Gemfile)

all: 
	$(foreach gemfile,$(GEMFILES),echo "\n\nTesting with: $(gemfile)...\n" && BUNDLE_GEMFILE=$(gemfile) test/one;)

clean:
	rm -f gemfiles/**/*.lock
