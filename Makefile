dcraw: dcraw.c
	# NO_JPEG and NO_JASPER were needed on OS X Mavericks
	$(CC) -DNO_JPEG -DNO_JASPER -DNO_LCMS $< -lm -o $@

clean:
	$(RM) dcraw
