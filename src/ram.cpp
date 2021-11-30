#include<iostream>
#include<iomanip>
#include<fstream>
#include<sstream>

#define GB 1048576.f
#define defaultSeparator "/"

std::string icon = "";

int main (int argc, char ** argv) {
    if (argc <= 1)
        exit(0);

    std::string separator = (argc > 2) ? (*(argv + 2)) : defaultSeparator;

    // 0 total, 1 free, 2 avail
    int mem[3];

    std::ifstream f(*(argv + 1));
    int i = 0;
    std::string word;
    std::stringstream ss;
    while (f >> word) {
        ss << word;
        if (std::stringstream(word) >> mem[i]) {
            if (i >= 2)
                break;
            ++i;
        }
    }
    f.close();

    std::cout << std::fixed << std::setprecision(1);
    for (i = (sizeof(mem)/sizeof(*mem)) -1; i > 0; --i) {
        std::cout << mem[i] / GB << separator;
    }
    std::cout << mem[0] / GB << " " << icon << std::endl;

    return 0;
}