#
# Original data, stuff we don't want to overwrite by accident
#
PRECIOUS := v.shuf.txt v.png v.outliers.png README.md

all: protect clean

protect:
	chmod 444 $(PRECIOUS)

clean:
	rm -f last.dump.rda Rplots.pdf

