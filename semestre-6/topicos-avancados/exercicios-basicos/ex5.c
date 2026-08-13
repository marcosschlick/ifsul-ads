#include <stdio.h>
#include <string.h>

int main()
{
	char string1[50];
	char string2[50];

	printf("Digite a primeira string: ");
	scanf("%s", string1);

	printf("Digite a segunda string: ");
	scanf("%s", string2);

	char string3[100];

	strcat(string3, string1);
	strcat(string3, " ");
	strcat(string3, string2);

	printf("%s\n", string3);

	return 0;
}
