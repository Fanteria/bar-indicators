#include<iostream>
#include<iomanip>
#include<fstream>
#include<sstream>
#include<vector>

#define FILEPATH "/proc/cpuinfo"
#define DIVIDE 1000.f
#define MHZ "cpu MHz"

std::string icon = "";

int main (int argc, char ** argv) {
    std::string separator = (argc > 2) ? *(argv + 1) : "/";

    std::string line;
    std::ifstream f(FILEPATH);
    int max = 0;
    int average = 0;
    int freq;
    int count = 0;
    while (std::getline(f, line)) {
        if (! line.rfind(MHZ, 0)) {
            freq = stoi(line.substr(line.rfind(":") + 1));
            average += freq;
            ++count;
            if (freq > max) max = freq;
        }
    }
    f.close();

    int maxHz = 3600;
    average /= count;

    std::cout << std::fixed << std::setprecision(1);
    std::cout << average / DIVIDE << separator;
    std::cout << max / DIVIDE << separator;
    std::cout << maxHz / DIVIDE;
    std::cout << " " << icon << std::endl;

    return 0;
}