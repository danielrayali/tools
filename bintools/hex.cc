#include <iostream>
#include <iomanip>
#include <sstream>
#include <cstdlib>

using namespace std;

int main(int argc, char* argv[]) {
    if (argc != 2) {
        cout << "hex - Converts decimal values to hexidecimal" << endl;
        cout << "Usage: " << argv[0] << " <decimal>" << endl;
        return 1;
    }

    const long long input = std::atoll(argv[1]);
    std::stringstream hex_input;
    hex_input << std::hex << input;
    int width = hex_input.str().size();
    while ((width % 4) != 0)
        ++width;

    cout << std::setfill('0') << std::hex << std::showbase << std::internal << std::setw(width + 2) << input << endl;
    return 0;
}

