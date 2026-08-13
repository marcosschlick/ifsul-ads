#include <stdio.h>

int main()
{
	int idade;

	printf("Digite a sua idade: ");
	scanf("%i", &idade);
	idade = (idade > 0) ? idade : 0;

	if (idade >= 18) 
	{
		printf("Você tem %i anos, portanto, é maior de idade!\n", idade);
	} else 
	{
		printf("Você tem %i anos, portanto, é menor de idade!\n", idade);
	}

	return 0;
}
