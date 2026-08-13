#include <stdio.h>

int max(int *p);
int min(int *p);

int main()
{
	int array[8];
	int i;

	for (i = 0; i < 8; i++)
	{
		printf("Digite um número: ");
		scanf("%i", &array[i]);
	}

	int maior = max(array);
	int menor = min(array);

	printf("Maior número: %i\n", maior);
	printf("Menor número: %i\n", menor);

	return 0;
}

int max(int *p)
{
	int maior = *p;
	int i;

	for (i = 0; i < 8; i++)
	{
		if (*(p + i) > maior)
		{
			maior = *(p + i);
		}
	}	

	return maior;
}

int min(int *p)
{
	int menor = *p;
	int i;

	for (i = 0; i < 8; i++)
	{
		if (*(p + i) < menor)
		{
			menor = *(p + i);
		}
	}
	return menor;

}
