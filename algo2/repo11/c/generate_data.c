#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#define START -4.0
#define END 6.0
#define INTERVAL 0.1
#define N 1

double Uniform( void ){
	return ((double)rand()+1.0)/((double)RAND_MAX+2.0);
}

double rand_normal(double mu, double sigma){
    double z=sqrt(-2.0*log(Uniform())) * sin( 2.0*M_PI*Uniform() );
    return mu + sigma*z;
}

double func(double x) {
    return 5*x + 10 + rand_normal(0, 1);
}

int main(int argc, char *argv[])
{
    double x;
    FILE *fp;

    if (argc != 2) {
        printf("Usage: %s <filename>\n", argv[0]);
        exit(EXIT_FAILURE);
    }
    if((fp = fopen(argv[1], "w")) == NULL) {
        printf("Cannot open file (%s) \n", argv[1]);
        exit(EXIT_FAILURE);
    }
    fprintf(fp, "%d\t%d\n", (int)((END - START) / INTERVAL) + 1, N);
    for (x=START; x < END; x += INTERVAL) {
        fprintf(fp, "%f\t%f\n", x, func(x));
    }
    fclose(fp);
}