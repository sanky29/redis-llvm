# Top level makefile, the real shit is at src/Makefile

default: all

.DEFAULT:
	cd src && $(MAKE) $@

install:
	cd src && $(MAKE) $@
llvm:
	./redis_llvm.sh
llvm_exe:
	./llvm_exe.sh

.PHONY: install
