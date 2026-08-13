#include <stdio.h>

typedef struct
{
	char name[20];
	float price;
	int stock;
} Product;

int main()
{
	Product product;

	printf("Digite o nome do produto: ");
	scanf("%s", &product.name);

	printf("Digite o preço do produto: ");
	scanf("%f", &product.price);

	printf("Digite a quantidade em estoque do produto: ");
	scanf("%i", &product.stock);

	printf("Nome: %s\n", product.name);
	printf("Preço: %.2f\n", product.price);
	printf("Quantidade em estoque: %i\n", product.stock);

	return 0;
}
