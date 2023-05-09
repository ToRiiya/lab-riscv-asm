#include <stdio.h>
#include <stdlib.h>

#define N 3
#define M 2

int sum_neg(int* matrix)
{
	int sum = 0;
	for (int i = 0; i < M*N; i++)
	{
			if (matrix[i] < 0)
				sum = sum + matrix[i];
		
	}
	return sum;
}

int main()
{
	int matrix[M][N] = { 0 };
	for (int i = 0; i < M; i++)
	{
		for (int j = 0; j < N; j++)
		{
			matrix[i][j] = rand() % 10;
			printf("%d\t", matrix[i][j]);
		}
		printf("\n");
	}

	int sum = sum_neg(&matrix[0][0]);
	printf("\nSum of neg\n", sum);
	return 0;
}