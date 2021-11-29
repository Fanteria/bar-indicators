#include<iostream>
#include<fstream>
#include<string>

std::string batteryStatus[] = {"", "", "", "", ""};

int main (int argc, char ** argv) {
    if (argc != 3) 
        exit(1);

    // Load percentage.
    std::string line;
    std::ifstream f(*(argv + 1));
    std::getline(f, line);
    f.close();

    std::cout << line << " ";
    int percentage = std::stoi(line);

    // Load charging status.
    std::ifstream statusFile(*(argv + 2));
    std::getline(statusFile, line);
    statusFile.close();

    // Charging status icon.
    if (line == "Charging")
        std::cout << "";
    else if (line == "Discharging")
	    std::cout << "";

    std::cout << batteryStatus[percentage / 25] << std::endl;
    return 0;
}