#include <stdio.h>
#include <sys/time.h>

extern int fibonacci(int x);

int main(int argc, char **argv)
{
	int number = 0;
	int result = 0;
	struct timeval start, end;
	long mtime, seconds, useconds;

	scanf("%d", &number);

	gettimeofday(&start, NULL);
	result = fibonacci(number);
	gettimeofday(&end, NULL);
	seconds  = end.tv_sec  - start.tv_sec;
	useconds = end.tv_usec - start.tv_usec;
	mtime = ((seconds) * 1000000 + useconds) + 0.5;
	printf("Elapsed time: %ld us\n", mtime);
	printf("The fibonacci sequence at %d is: %d\n", number, result);


	return 0;
}