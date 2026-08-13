#include <stdio.h>

int main()
{
	float num1, num2, media;
	
	printf("numero 1: %.2f numero 2: %.2f media: %.2f\n", num1, num2, media);

	printf("digite o número 1: ");
	scanf("%f", &num1);

	printf("digite o número 2: ");
	scanf("%f", &num2);

	media = num1 + num2;
	media /= 2;

	printf("numero 1: %.2f numero 2: %.2f media: %.2f\n", num1, num2, media);
	
	return 0;
}
