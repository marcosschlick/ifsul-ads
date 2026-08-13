#include <stdio.h>

typedef struct
{
	char model[20];
	int year;
	float price_day;
}Car;

void add_cars(Car *p);
void list_cars(Car *p);

int main()
{
	Car cars[10];

	add_cars(cars);

	printf("\n");

	list_cars(cars);

	return 0;
}

void add_cars(Car *p)
{
	int i;
	for (i = 0; i < 10; i++)
	{
		Car *car = p + i;

		printf("Digite o modelo do carro: ");
		scanf("%s", &p[i].model);

		printf("Digite o ano do carro: ");
		scanf("%i", &p[i].year);

		printf("Digite o preço por dia do carro: ");
		scanf("%f", &p[i].price_day);
	}
}

void list_cars(Car *p)
{
	int i;
	for (i = 0; i < 10; i++)
	{
		Car *car = p + i;

		printf("Modelo: %s\n", p[i].model);
		printf("Ano: %i\n", p[i].year);
		printf("Preço por dia: %.02f\n", p[i].price_day);
		printf("Preço por mês: %.2f\n", (p[i].price_day * 30));
	}
}
