main : libtest.so test.h
	gcc main.c -o main -ldl -L. -ltest -I. 
libtest.so : test.h
	gcc -shared test.c -o libtest.so -fPIC
clean :
	rm -rf libtest.so main
	
