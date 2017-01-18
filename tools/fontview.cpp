#include <iostream>
#include <string>

int main() {
    unsigned int nbyte, nrow, ncol, nscrcol, ncharperline;
    size_t i, j, k;
    std::cin.unsetf(std::ios::dec);
    std::cout << "\n * Enter number of bytes, number of rows of a character, "
            "number of column of a character and number of column on the screen: ";
    std::cin >> nbyte >> nrow >> ncol >> nscrcol;
    std::cout << " --- Enter hexadecimal. A line with a star will stop input --- \n";
    std::string st;
    uint8_t* inp = new uint8_t[nbyte + 1];
    uint8_t temp;
    size_t read_byte = 0;
    bool readoddnibble = false;
    char c;
    do {
        std::getline(std::cin, st);
        for (i = 0; i < st.length(); i++) {
            c = st[i];
            if (c >= '0' && c <= '9')
                temp = c - '0';
            else if (c >= 'A' && c <= 'F')
                temp = (c - 'A') + 10;
            else if (c >= 'a' && c <= 'f')
                temp = (c - 'a') + 10;
            else continue; // for

            if (readoddnibble) {
                inp[read_byte] = (inp[read_byte] << 4) | temp;
                read_byte++;
                if (read_byte == nbyte) goto lbl1;
            } else {
                inp[read_byte] = temp;
            }
            readoddnibble = !readoddnibble;
        }
        if (readoddnibble)
            std::cout << "Warning: possibly wrong input!\n";
    } while (st != "*");
    lbl1:
    std::cout << "Number of byte entered = " << read_byte << "\n";
    read_byte /= nrow; // int divide

    ncol++;
    std::string* rows = new std::string[nrow];
    for (i = 0; i < read_byte; i++) {
        for (j = 0; j < nrow; j++) {
            temp = inp[i * nrow + j];
            for (k = 0; k < 8; k++) {
                if (rows[j].length() % ncol == 0) rows[j] += '|';
                rows[j] += (char) ((temp >> 7) == 0 ? ' ' : 0xDB);
                temp <<= 1;
            }
        }
    }
    ncharperline = nscrcol / ncol;
    nscrcol = ncol * ncharperline;
    read_byte = (read_byte * 8) / (nscrcol - ncharperline);
    for (i = 0; i < read_byte; i++) {
        for (j = 0; j < nrow; j++) {
            std::cout << rows[j].substr(0, nscrcol) << "|\n";
            rows[j].erase(0, nscrcol);
        }
        std::cout << '\n';
    }
    while (true) {
        std::getline(std::cin, st);
    }
}
