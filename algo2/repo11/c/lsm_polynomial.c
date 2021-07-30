#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <time.h>
#define BUF_SIZE 4096
double *array_x, *array_y, **factor_matrix, *x;
int DegreeOfPolynomial, NumOfData;

void Clear() {
    free(array_x);
    free(array_y);
    for (int i = 0; i < (DegreeOfPolynomial + 1); i++) free(factor_matrix[i]);
    free(factor_matrix);
    free(x);
}

void init_factor_matrix(int n)
{
    int i, j, k;
    double temp;
    for (i = 0; i < n; i++) {
        for (j = 0; j < n; j++) {
            factor_matrix[i][j] = 0.0;
            for (k = 0; k < NumOfData; k++)
                factor_matrix[i][j] += pow(array_x[k], i+j);
        }
        factor_matrix[i][n] = 0.0;
        for (k = 0; k < NumOfData; k++)
            factor_matrix[i][n] += pow(array_x[k], i)*array_y[k];
    }
}

void disp_factor_matrix(int n, double** matrix)
{
    int i, j;
    for (i = 0; i < n; i++) {
        for (j = 0; j < n + 1; j++) printf("%f ", matrix[i][j]);
        printf("\n"); 
    }
}

void disp_vector_x(int n, double* x)
{
    for (int i = 0; i < n; i++) printf("a%d: %f\n", i, x[i]);
}

void gauss_elimination_method(int n, double** matrix, double* x_)
{
    int i, j, k;
    double pivot, temp;
    for (i = 0; i < n - 1; i++) {
        pivot = matrix[i][i];
        for (j = i + 1; j < n; j++) {
            temp = matrix[j][i] / pivot;
            for (k = i + 1; k < n + 1; k++) matrix[j][k] -= matrix[i][k] * temp;
        }
    }
    for (i = n - 1; i >= 0; i--) {
        temp = 0.0;
        for (k = i + 1; k < n; k++) temp += matrix[i][k] * x_[k];
        x_[i] = (matrix[i][n] - temp) / matrix[i][i];
    }
}

int main(int argc, char *argv[])
{
    FILE *fp;
    int i;
    char buf[BUF_SIZE];
    char command;
    if (argc != 2) {
        printf("Usage: %s <filename>\n", argv[0]);
        exit(1);
    }
    if ((fp = fopen(argv[1], "r")) == NULL) {
        printf("Cannot open file (%s) \n", argv[1]);
        exit(1);
    }
    /* Read the file to get the number of (x,y) pairs (N) 
    and the degree of approximate polynomial (m) */
    fgets(buf, BUF_SIZE, fp);
    sscanf(buf, "%d %d", &NumOfData, &DegreeOfPolynomial);
    /* Memory allocation for the (x,y) pairs */
    if ((array_x = malloc(sizeof(double) * NumOfData)) == NULL) {
        printf("Cannot allocate memory \n");
        exit(1);
    }
    if ((array_y = malloc(sizeof(double) * NumOfData)) == NULL) {
        printf("Cannot allocate memory \n");
        exit(1);
    }
    if ((factor_matrix = malloc(sizeof(double *) * (DegreeOfPolynomial + 1))) == NULL) {
        printf("Cannot allocate memory \n");
        exit(1);
    }
    for (i = 0; i < (DegreeOfPolynomial + 1); i++) {
        if ((factor_matrix[i] = malloc(sizeof(double) * (DegreeOfPolynomial + 2))) == NULL) {
            printf("Cannot allocate memory \n");
            exit(1);
        }
    }
    if ((x = malloc(sizeof(double) * (DegreeOfPolynomial + 1))) == NULL) {
        printf("Cannot allocate memory \n");
        exit(1);
    }
    /* Read the (x,y) pairs */
    i = 0;
    while (fgets(buf, BUF_SIZE, fp) != NULL) {
        sscanf(buf, "%lf %lf", &array_x[i], &array_y[i]);
        i++;
    }
    fclose(fp);
    init_factor_matrix(DegreeOfPolynomial + 1);
    //disp_factor_matrix(DegreeOfPolynomial + 1, factor_matrix);
    gauss_elimination_method(DegreeOfPolynomial + 1, factor_matrix, x);
    disp_vector_x(DegreeOfPolynomial + 1, x);

    Clear();
}