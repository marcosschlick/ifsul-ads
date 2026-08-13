#include <stdio.h>

typedef struct
{
	char model[20];
	int year;
	float price_day;
}Car;


int main()
{
	Car car;
	
	printf("Digite o modelo do carro: ");
	scanf("%s", &car.model);

	printf("Digite o ano do carro: ");
	scanf("%i", &car.year);

	printf("Digite o preço por dia do carro: ");
	scanf("%f", &car.price_day);

	printf("Modelo: %s\n", car.model);
	printf("Ano: %i\n", car.year);
	printf("Preço por dia: %.2f\n", car.price_day);
	printf("Preço por mês: %.2f\n", (car.price_day * 30));

	return 0;
}
