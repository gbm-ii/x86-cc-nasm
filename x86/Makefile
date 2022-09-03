EXEFILE = rev
OBJECTS = rev.o mystrrev.o
CCFMT = -m32
NASMFMT = -f elf32
CCOPT = -m32 -c
NASMOPT = -w+all

.c.o:
	cc $(CCFMT) $(CCOPT) $<

.s.o:
	nasm $(NASMFMT) $(NASMOPT) $<

$(EXEFILE): $(OBJECTS)
	cc $(CCFMT) -o $(EXEFILE) $(OBJECTS)
	
clean:
	rm *.o $(EXEFILE)
