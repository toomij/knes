IVERILOG=iverilog
VVP=vvp

GTKWAVE=gtkwave
CA65=ca65
LD65=ld65


all: k6502_test.vcd


.PHONY: tests

ASM_TESTS=${wildcard tests/*.S}
TXT_TESTS=${ASM_TESTS:.S=.txt}
TESTS=${ASM_TESTS:.S=}
TEST_OUTS=${ASM_TESTS:.S=-out.csv}

tests: ${TXT_TESTS}
	${IVERILOG} -DEX -DTRACE -Wall -y. -o k6502_test k6502_test.v
	@for test in ${TESTS}; do \
		cp $$test.txt rom.txt; \
		${VVP} -n ./k6502_test > /dev/null ; \
		mv k6502_test.csv $$test-out.csv; \
		rm rom.txt; \
		diff $$test-out.csv $$test-pass.csv > /dev/null; \
		if [ "$$?" == "0" ]; then \
			echo "$$test: pass"; \
		else \
			echo "$$test: fail"; \
		fi \
	done
	@cat ${TEST_OUTS} | ./test_matrix.pl

dumper: dumper.o

%_test: %_test.v
	${IVERILOG} -DEX -DTRACE -Wall -y. -o $@ $<

%.vcd: %
	${VVP} -n ./$<

view-%: %.vcd
	gtkwave -a `echo $< | sed 's/.vcd/.sav/'` $<

%.o: %.S
	${CA65} -t nes -o $@ $<

%.nes: %.o
	${LD65} -t nes -o $@ $<

%.txt: %.nes
	./dumper < $< > $@