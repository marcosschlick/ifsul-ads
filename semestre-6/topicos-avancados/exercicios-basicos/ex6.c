#include <stdio.h>

int main()
{
	int total = 0;
	int num;

	do 
	{
		printf("Digite o número: ");
		scanf("%i", &num);
		total += num;
	} while (num != 0);

	printf("Soma de todos os números: %i\n", total);

	return 0;
}
