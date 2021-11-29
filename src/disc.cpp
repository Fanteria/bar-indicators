#include<iostream>
#include<iomanip>
#include<filesystem>

namespace fs = std::filesystem;

#define GB 1073741824.f

int main (int argc, char ** argv) {
	if (argc <= 1)
		exit(1);	

	// Process arguments.
	std::string path = *(argv + 1);
	std::string separator = (argc > 2) ? *(argv + 2) : "/";

	// Get free space.
	fs::space_info discSpace = fs::space(*argv);

	// Print informatons.
	std::cout << path << std::endl;
	std::cout << std::fixed;
	std::cout << std::setprecision(0);
	std::cout << (discSpace.capacity - discSpace.free) / GB; 
	std::cout << separator;
	std::cout << discSpace.capacity / GB;
	std::cout << std::endl;	

	return 0;
}