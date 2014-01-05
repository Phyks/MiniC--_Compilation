#include <iostream>

int test, bidule, truc;
int chose;

void fonction() {
    int x = 3;
    std::cout << "ok\n";
}

int fonction_args(int x, int y) {
    std::cout << x << "\n";
    std::cout << y << "\n";
    int i = 0;

    std::cout << "\n";
    while(i < 3)
        std::cout << i++ << "\n";
    std::cout << "\n";
}

class A { public: int x; int y;};

void surcharge() {
    std::cout << 42 << "\n";
}

void surcharge (int x) {
    std::cout << x << "\n";
}

int main() {
    A a;
    // TODO A *a1 = new A();
    int x = 3;
    int y = 0;

    y++;
    std::cout << y << "\n";

    test = 3;
    bidule = 4;
    bidule++;
    bidule++;
    std::cout << test << "\n";

    std::cout << x << "\n";

    std::cout << "bidule" << bidule << "\n";

    x=x+1;
    std::cout << x << "\n";
    y=x++;
    std::cout << x << "\n";

    std::cout << y << "\n";
    std::cout << ((41+3)-2)/2%4*42 << 43 << "\n";
    // std::cout << 2 && 2 << 2 && 3 << 2 || 3 << 2 == 3 << 2 != 3 << 3 == 3 << "\n";
    std::cout << "test";
    std::cout << "print " << "plusieurs\n" << "chaines\n";

    if(test == 4){
        std::cout << "if ok" << "\n";
    }
    else {
        std::cout << "else ok \n";
    }

    int i = 0;
    std::cout << i < 3 << "\n";

    while(i < 3) {
        std::cout << i << "\n";
        i++;
    }

    int j;
    for(j = 0; j < 5; j++) {
        std::cout << j << "\n";
    }

    int var = fonction();
    std::cout << var << "\n";
    int *p = NULL;

    std::cout << a.x << "\n";
    std::cout << a.y << "\n";

    a.x = 3;
    a.y = 5;

    std::cout << a.x << "\n";
    std::cout << a.y << "\n";

    fonction_args(42, 43);

    i = 0;
    while(i < 5) {
        std::cout << ++i << "\n";
    }

    std::cout << "test for imbriques" << "\n";
    for(i = 0; i < 5; i++) {
        int k;
        for(k = 0; k < 5; k++) {
            std::cout << i << ", " << k << "\n";
        }
    }

    surcharge();
    surcharge(43);

    return 2;
}
