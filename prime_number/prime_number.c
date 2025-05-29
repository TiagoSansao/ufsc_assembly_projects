#include <stdio.h>
#include <stdlib.h>

void print_not_prime_number() {
    printf("%s", "Não é um número primo.");
}

int main() {
    int n;
    int count = 0;

    scanf("%d", &n);
    
    if ((n & 1) == 0) {
        print_not_prime_number();
        return 0;
    }

    for (int i = 1; i < n; i += 1) {
        if (n % i == 0) count += 1;
        if (count >= 2) {
            print_not_prime_number();
            return 0;
        }
    }

    printf("%s", "É um número primo.");

    return 0;
}