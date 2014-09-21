dcraw: dcraw.c
	$(CC) -DNO_JPEG -DNO_JASPER -DNO_LCMS -o $@ $<
