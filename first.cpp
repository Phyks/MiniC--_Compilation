#include <iostream>

void inutile () {}

int main () {
    int x;
    int x = 0;

    if(x == 1)
        x = 2;

    if(x != 1)
        x=2;
    else
        x=3;

    if(x=3) {
        x=4;
    }
    else
        x++;

    x--;
    x++;
    ++x;
    int y=--x;
    int z = *y;
    int q = &x;

    if(true)
        x++;

    if(false)
        x++;

    x=NULL;
    x = X+1;
    x = (x+1)*3+3;

    x=x%3;
    &x;
    !x;
    -x;
    +x;
    x%1;
    x==1;

    /* TODO : std::cout << "ok";*/
    
    /* Class*/

    while (x != 1) {
        x = 1;
    }

    while (x==2)
        x=3;

    return 3;
    return x;
}
