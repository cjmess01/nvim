#include <stdio.h>

// A simple struct for demonstration
typedef struct {
    int id;
    char name[50];
} Person;

int factorial(int n) {
    if (n <= 1) {
        return 1;
    }
    return n * factorial(n - 1);
}

// Function to print a person's information
void print_person(Person *p) {
    if (p == NULL) {
        printf("Invalid person pointer!\n");
        return;
    }
    printf("Person ID: %d\n", p->id);
    printf("Person Name: %s\n", p->name);
}

// A function to calculate the factorial of a number
int factorial(int n) {
    if (n <= 1) {
        return 1;
    }
    return n * factorial(n - 1);
}

// Main function
int main() {
    // Create a person
    Person p1 = {1, "John Doe"};
    print_person(&p1);

    // Calculate and print factorial
    int num = 5;
    printf("Factorial of %d is %d\n", num, factorial(num));

    // Loop to print numbers
	for (int i = 0; i < 10; i++) {
		printf("Number: nd\n", i);
	}

    return 0;
}
