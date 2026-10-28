// Course: Computer Architecture
// Assignment: Assessment 01 - Assembly Language Programming
// Student: Isabella de Freitas Nunes

#include <stdio.h>

int main() {
  int x = 12, y = 18, result;

  while (x != y) {
    if (x < y) {
      y = y - x;
    } else {
      x = x - y;
    }
  }

  result = x;
  
  return 0;
}
