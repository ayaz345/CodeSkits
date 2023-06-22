#include <iostream>
using namespace std;

int main() {
    int numerator, denominator;
    cout << "Enter numerator: ";
    cin >> numerator;
    cout << "Enter denominator: ";
    cin >> denominator;
    try {
        if (denominator == 0) {
            throw "Denominator cannot be zero";
        }
        cout << "Fraction: " << numerator << "/" << denominator << endl;
    }
    catch (const char* msg) {
        cerr << "Error: " << msg << endl;
    }
    return 0;
}