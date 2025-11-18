EXEFILE = rev
OBJECTS = rev.o mystrrev.o
CCFMT = -m64
NASMFMT = -f elf64
CCOPT = -g
NASMOPT = -g -w+all

.c.o:
	cc $(CCFMT) $(CCOPT) -c $<

.s.o:
	nasm $(NASMFMT) $(NASMOPT) -l $*.lst $<

$(EXEFILE): $(OBJECTS)
	cc $(CCFMT) $(CCOPT) -o $@ $^
	
clean:
	rm *.o *.lst $(EXEFILE)
