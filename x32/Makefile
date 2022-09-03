EXEFILE = rev
OBJECTS = rev.o mystrrev.o
CCFMT = -mx32
NASMFMT = -f elfx32
CCOPT = -c
NASMOPT = -w+all

.c.o:
	cc $(CCFMT) $(CCOPT) -c $<

.s.o:
	nasm $(NASMFMT) $(NASMOPT) $<

$(EXEFILE): $(OBJECTS)
	cc $(CCFMT) -o $(EXEFILE) $(OBJECTS)
	
clean:
	rm *.o $(EXEFILE)
