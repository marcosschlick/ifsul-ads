#include <stdio.h>

typedef struct
{
	char name[20];
	int age;
	int grade;
} Student;

int main()
{
	Student student;

	printf("Digite o seu nome: ");
	scanf("%s", &student.name);

	printf("Digite a sua idade: ");
	scanf("%i", &student.age);

	printf("Digite a sua nota: ");
	scanf("%i", &student.grade);

	printf("Nome: %s\n", student.name);
	printf("Idade: %i\n", student.age);
	printf("Nota: %i\n", student.grade);

	return 0;
}
