#include "Main.h"

#include <iostream>

using namespace std;


void detectEdge(int(* arrs)[]);
void intializeGMatrices(int (* Gx)[3],int (* Gy)[3]);

int main() {
    cout << "Hello World!\n";
    int matrix[][] = new int[10][10];
    cout << "Enter matrix element\n";
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            cin >> matrix[i][j];
        }
    }

    cout << "Here is the matrix" << endl;
    for (int i = 0; i < 10; i++) {
        for (int j = 0; j < 10; j++) {
            cout << matrix[i][j] << " ";
        }
        cout << endl;
    }
    detectEdge(matrix);
}



void detectEdge(int (*arrs)[]) {
    int Gx[3][3];
    int Gy[3][3];
    intializeGMatrices(Gx,Gy);
    
}






void intializeGMatrices(int (*Gx)[3], int (*Gy)[3]) {
    Gx[0][0] = -1;
    Gx[1][0] = -1;
    Gx[2][0] = -1;
    Gx[0][1] = 0;
    Gx[1][1] = 0;
    Gx[2][1] = 0;
    Gx[0][2] = 1;
    Gx[1][2] = 1;
    Gx[2][2] = 1;
    Gy[0][0] = -1;
    Gy[1][0] = 0;
    Gy[2][0] = 1;
    Gy[0][1] = -1;
    Gy[1][1] = 0;
    Gy[2][1] = 1;
    Gy[0][2] = -1;
    Gy[1][2] = 0;
    Gy[2][2] = 1;
}










void Start() {

}
