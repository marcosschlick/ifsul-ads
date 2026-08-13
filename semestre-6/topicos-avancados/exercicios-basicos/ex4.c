#include <stdio.h>

int main()
{
	int senha;
	int i = 0;

	do
	{
		if (i > 0) 
		{
			printf("Senha incorreta! Tente novamente.\n");
		}
		printf("Digite o senha: ");
		scanf("%i", &senha);
		i++;
	} while (senha != 1234);
	
	printf("Parábens, você acertou a senha!\n");

	return 0;
}
