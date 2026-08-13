#include <stdio.h>

int main()
{
	int dia;

	printf("Digite um número de 1 à 7: ");

	scanf("%i", &dia);

	switch(dia)
	{
		case 1:
			printf("Final de semana\n");
			break;
		case 2:
			printf("Dia de semana\n");
			break;
		case 3:
			printf("Dia de semana\n");
			break;
		case 4:
			printf("Dia de semana\n");
			break;
		case 5:
			printf("Dia de semana\n");
			break;
		case 6:
			printf("Dia de semana\n");
			break;
		case 7:
			printf("Final de semana\n");
			break;
		default:
			printf("Você digitou um número inválido animal!\n");

	}

	return 0;
}
