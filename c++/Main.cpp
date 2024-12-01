#include <complex>
#include <iostream>
#include <iomanip>
#include <random>
#include <cmath>

using namespace std;

    void detectEdge(double (*matrix)[10][10]);
    void intializeGMatrices(int (*Gx)[3][3], int (*Gy)[3][3]);
    double getGradientMagnitude(int (*Gx)[3][3], int (*Gy)[3][3], double (*subMatrix)[3][3]);

    int main() {
        cout << "Hello Programmers!\n";
        const int size = 10;
        double matrix[size][size]; // Statically sized array

        /*cout << "Enter matrix elements:\n";
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                cin >> matrix[i][j];
            }
        }*/

        srand(time(0));

        // 10x10 matrix with random values between 0 and 255
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                matrix[i][j] = rand() % 256; // Random value between 0 and 255
            }
        }

        cout << "Here is the matrix:\n";
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                cout << matrix[i][j] << " ";
            }
            cout << endl;
        }

        detectEdge(&matrix);

        return 0;
    }

void detectEdge(double (*matrix)[10][10]) {
        int Gx[3][3];
        int Gy[3][3];
        intializeGMatrices(&Gx, &Gy);
        double subMatrix[3][3];
        double edge[10][10] = {};
        double T = 70; // Threshold value ; assuming Complex Image
        int numRows = 10;
        int count = numRows - 2; // Assuming square image

        for (int i = 0; i < count; i++) {
            for (int j = 0; j < count; j++) {
                // Extract a 3x3 submatrix
                for (int m = 0; m < 3; m++) {
                    for (int n = 0; n < 3; n++) {
                        subMatrix[m][n] = (*matrix)[i + m][j + n];
                    }
                }

                double m = getGradientMagnitude(&Gx, &Gy, &subMatrix);

                if (m > T) {
                    edge[i][j] = 1;
                }
            }
        }

        cout << endl;
        cout << "Here is the Edge Matrix:\n";
        for (auto &row : edge) {
            for (double val : row) {
                cout << val << " ";
            }
            cout << endl;
        }
    }


    double getGradientMagnitude(int (*Gx)[3][3], int (*Gy)[3][3], double (*subMatrix)[3][3]){
        double sumX=0, sumY=0;
        for (int i = 0; i < 3; i++) {
            for (int j = 0; j < 3; j++) {
                sumX += (*Gx)[i][j] * (*subMatrix)[i][j];
                sumY += (*Gy)[i][j] * (*subMatrix)[i][j];
            }
        }
        double m= sqrt(sumX*sumX+sumY*sumY);
        return m;
    }

    void intializeGMatrices(int (*Gx)[3][3], int (*Gy)[3][3]){
        (*Gx)[0][0] = -1; (*Gx)[1][0] = -1; (*Gx)[2][0] = -1;
        (*Gx)[0][1] = 0;  (*Gx)[1][1] = 0;  (*Gx)[2][1] = 0;
        (*Gx)[0][2] = 1;  (*Gx)[1][2] = 1;  (*Gx)[2][2] = 1;

        (*Gy)[0][0] = -1; (*Gy)[1][0] = 0;  (*Gy)[2][0] = 1;
        (*Gy)[0][1] = -1; (*Gy)[1][1] = 0;  (*Gy)[2][1] = 1;
        (*Gy)[0][2] = -1; (*Gy)[1][2] = 0;  (*Gy)[2][2] = 1;
    }
