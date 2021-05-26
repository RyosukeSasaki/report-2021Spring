#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/time.h>
#include <omp.h>
#define BUF_SIZE 80
#define NAME_SIZE 32
#define depth_thresh 5
struct student {
	int score;
	char name[NAME_SIZE];
};
struct student *table;
int my_compare(const struct student *a, const struct student *b) {
	return (a->score > b->score) ? 1 : (a->score < b->score) ? -1 : 0;
}
void my_swap(struct student *a, struct student *b) {
	struct student c;
	memcpy(&c, a, sizeof(struct student));
	memcpy(a, b, sizeof(struct student));
	memcpy(b, &c, sizeof(struct student));
}
/* Copy data from src to dst */
void my_copy(struct student *src, struct student *dst) {
	memcpy(dst, src, sizeof(struct student));
}

void quick_func(int left, int right, int depth) {
	int i, j;
	struct student pivot;
	if (left >= right) return;
	i = left;
	j = right;
	my_copy(&table[(i + j) / 2], &pivot);
	do {
		while (my_compare(&table[i], &pivot)==-1) i++;
		while (my_compare(&table[j], &pivot)==1) j--;
		if(i <= j) {
			my_swap(&table[i], &table[j]);
			i++;
			j--;
		}
	} while (i <= j);
	if (depth < depth_thresh) {
		#pragma omp task
		quick_func(left, j, depth + 1);
		#pragma omp task
		quick_func(i, right, depth + 1);
		#pragma omp taskwait
	} else {
		quick_func(left, j, depth + 1);
		quick_func(i, right, depth + 1);
	}
}
void Quick(int size) {
	struct timeval stime, etime;
	double sec;
	gettimeofday(&stime, NULL);

	#pragma omp parallel
	{
		#pragma omp single
		quick_func(0, size - 1, 0);
	}

	gettimeofday(&etime, NULL);
	sec = (etime.tv_sec - stime.tv_sec) + 
			(etime.tv_usec - stime.tv_usec) / 1000000.0;
	printf("Elapsed Time %.4f [sec] \n", sec);
}
void Disp(int size) {
	int i;
	for (i = 0; i < size; i++)
		printf("%d\t%s\n", table[i].score, table[i].name);
}
int main(int argc, char *argv[]) {
	FILE *fp;
	int n;
	char buf[BUF_SIZE];
	char command;
	if (argc != 2) {
		printf("Usage: %s <filename>\n", argv[0]); exit(1);
	}
	if ((fp = fopen(argv[1], "r")) == NULL) {
		printf("Cannot open file (%s) \n", argv[1]); exit(1);
	}
	/* Read the file to count the number of lines in the file */
	n = 0;
	while (fgets(buf, BUF_SIZE, fp) != NULL)
		n++;
	/* Memory allocation */
	if ((table = malloc(sizeof(struct student) * n)) == NULL) {
		printf("Cannot allocate memory \n"); exit(1);
	}
	/* Read the file again to copy the data */
	n = 0;
	fseek(fp, 0L, SEEK_SET);
	while (fgets(buf, BUF_SIZE, fp) != NULL) {
		sscanf(buf, "%d\t%s", &table[n].score, table[n].name);
		n++;
	}
	fclose(fp);
	omp_set_num_threads(4);
	int num_thread = omp_get_num_threads();
	printf("max num of thread: %d", num_thread);

	printf("[d]       Display Table\n");
	printf("[q]       Quick Sort\n");
	printf("[c]       Clear Counters\n");
	printf("[e]       Exit\n");
	for (;;) {
		scanf(" %c", &command);
		switch (command) {
		case 'd':	Disp(n); break;
		case 'q':	Quick(n); break;
		case 'e':	free(table); return 0;
		}
	}
	return 0;
}
