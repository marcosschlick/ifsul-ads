#include <stdio.h>

int main()
{
	int var;
	int *p;
	p = &var;

	printf("Digite um número: ");
	scanf("%i", p);

	printf("O número digitado foi: %i\n", *p);


	return 0;
}
