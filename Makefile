default: impbcopy impbpaste

impbcopy:
	clang -Wall -g -O3 -ObjC -framework Foundation -framework AppKit -o impbcopy impbcopy.m

impbpaste:
	clang -Wall -g -O3 -ObjC -framework Foundation -framework AppKit -o impbpaste impbpaste.m

install: default
	mv impbcopy ~/bin/
	mv impbpaste ~/bin/

clean:
	rm impbcopy
	rm -rf impbcopy.dSYM/
	rm impbpaste
	rm -rf impbpaste.dSYM/
