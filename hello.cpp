#include <iostream>

//int test;

int main() {
    int x = 3;
    int y = 0;

    std::cout << x << "\n";

    x=x+1;
    std::cout << x << "\n";
    y=x++;
    std::cout << x << "\n";

    std::cout << y << "\n";
    std::cout << ((41+3)-2)/2%4*42 << 43 << "\n";
    // std::cout << 2 && 2 << 2 && 3 << 2 || 3 << 2 == 3 << 2 != 3 << 3 == 3 << "\n";
    std::cout << "test";
    std::cout << "print " << "plusieurs\n" << "chaines";

    return 0;
}
