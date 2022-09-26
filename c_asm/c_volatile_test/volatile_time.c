#include <stdio.h>
#include <sys/time.h>


int main(int argc, char const *argv[]) {
    struct timeval start, end; //起止时间
    gettimeofday(&start, NULL);
    double timeuse;
	volatile int i;
    for (i = 0; i < 1000000; ++i) { ; }
    gettimeofday(&end, NULL);
    timeuse =
        1000000 * (end.tv_sec - start.tv_sec) + (end.tv_usec - start.tv_usec);
    printf("total time: %f\n", timeuse / 1000000); // total time: 0.003430
    return 0;
}
