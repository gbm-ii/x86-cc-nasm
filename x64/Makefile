EXEFILE = rev
OBJECTS = rev.o mystrrev.o
CCFMT = -m64
NASMFMT = -f elf64
CCOPT = 
NASMOPT = -w+all

.c.o:
	cc $(CCFMT) $(CCOPT) -c $<

.s.o:
	nasm $(NASMFMT) $(NASMOPT) $<

$(EXEFILE): $(OBJECTS)
	cc $(CCFMT) -o $(EXEFILE) $(OBJECTS)
	
clean:
	rm *.o $(EXEFILE)
