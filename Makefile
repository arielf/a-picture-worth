#
# Original data, stuff we don't want to overwarite by accident
#
PRECIOUS := v.shuf.txt v.png v.outliers.png index.html

all: protect clean

protect:
	chmod 444 $(PRECIOUS)

clean:
	rm -f last.dump.rda Rplots.pdf

