
C_OPTS := -shared -fpic -O2 \
	-lssl -lcrypto -lncurses \
	-std=c99

build:
	@cp src/code/deeply/nested/foo.h \
		/usr/local/include/myc.h
	@clang $(C_OPTS) \
		src/code/deeply/nested/foo.c \
		-install_name libmyc.dylib \
		-o build/libmyc.dylib
	@cp build/libmyc.dylib \
		/usr/local/lib
	@clang test/x.c \
		-lmyc -o build/test.o
	@./build/test.o
.PHONY: build
