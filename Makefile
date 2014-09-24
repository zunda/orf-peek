dcraw: dcraw.c
	# NO_JPEG and NO_JASPER were needed on OS X Mavericks
	$(CC) -Wall -DNO_JPEG -DNO_JASPER -DNO_LCMS $< -lm -o $@

example: dcraw
	# an example run
	./dcraw -R 2008 1124 10 10 ./example/P9101350.ORF

clean:
	$(RM) dcraw
