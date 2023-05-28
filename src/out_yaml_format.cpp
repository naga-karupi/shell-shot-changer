#include <iostream>
#include <string>

using namespace std;

int main(int argc, char *argv[]) {
    if(argc != 2) {
        cout << "invalid error";
        return 1;
    }

    string s = argv[1];
    float f = stof(s);

    uint8_t *array;

    array = (uint8_t*)&f;

#if KP
    cout << "data: [0x10, 0x0f, 0x01, 0x00";
#endif

#if KI
    cout << "data: [0x10, 0x0f, 0x02, 0x00";
#endif
    
    for(int i = 0; i < 4; i++) cout << ", " << (int)array[i];
    cout << "]";

    return 0;
}