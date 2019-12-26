
build:
	isabelle build -D .

clean:
	isabelle build -D . -n -c
	rm -rf output

.PHONY: clean build
