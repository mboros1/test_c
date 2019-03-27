cc=gcc
include_dir=include
target=main
obj=main.o mytool1.o 

$(target):$(obj)
	$(cc) $(obj) -Wall -o $(target)
main.o:main.c
	$(cc) -c main.c -I$(include_dir)
mytool1.o: $(include_dir)/mytool1.c
	$(cc) -c $(include_dir)/mytool1.c
.PHONY:clean
	$(RM) *.o $(target)
