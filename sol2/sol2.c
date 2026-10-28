// Course: Computer Architecture
// Assignment: Assessment 01 - Assembly Language Programming
// Student: Isabella de Freitas Nunes

#include <stdio.h>

int main() {
  int x, y;

  printf("Enter the first number (positive): ");
  scanf("%d", &x);

  printf("Enter the second number (positive): ");
  scanf("%d", &y);

  while (x != y) {
    if (x < y) {
      y = y - x;
    } else {
      x = x - y;
    }
  }

  printf("The GCD is: %d\n", x);
  
  return 0;
}
