#include <iostream>
#include <iomanip>
#include <sstream>
#include <cstdlib>
#include <cstring>

using namespace std;

int main(int argc, char* argv[]) {
    if (argc != 2) {
        cout << "dec - Converts hexidecimal values to decimal" << endl;
        cout << "Usage: " << argv[0] << " <hex>" << endl;
        return 1;
    }

    char* end = argv[1] + strlen(argv[1]);
    const long long input = std::strtoll(argv[1], &end, 16);
    cout << input << endl;
    return 0;
}

