#include <iostream>

int g(const int x)
{
    std::cout << "In g()!\n";
    return g(x);
}

int f(const int y, const int x)
{
    std::cout << "In f()!\n";
    return y + 10;
}

int main()
{
    std::cout << "Hello, world!\n";
    // std::cout << f(5, 10) << '\n';
    // std::cout << g(6);
    // std::cout << f(5, g(6)) << '\n';

    return 0;
}
