#include <stdio.h>

typedef struct
{
	char title[20];
	char author[20];
	int num_pages;

}Book;

int main()
{
	Book book;

	printf("Digite o título do livro: ");
	scanf("%s", &book.title);

	printf("Digite o autor do livro: ");
	scanf("%s", &book.author);

	printf("Digite o número de páginas do livro: ");
	scanf("%i", &book.num_pages);

	printf("Título: %s\n", book.title);
	printf("Autor: %s\n", book.author);
	printf("Número de páginas: %i\n", book.num_pages);

	return 0;
}
