///////////////////////////////
// TrialSize_main.cc
// C interaction file
#include "TrialSize.h"
#include "R.h" // R functions
#include "Rmath.h" // R math
// Functions Passed to C++ from R must be passed in C extern format
// All variables are passed to C by reference (pointers);
// All output of functions is "void" (adjustments made via reference change)
extern "C" {
void DemoAutoCor(double *RetV, int *pLwant, double *InputVec, int *pLengthInput) {
double *AutoOutput = TrialSize(InputVec, pLengthInput[0]);
int ii;
int MaxTake = pLwant[0];
if ( (int) floor(static_cast<float>(pLengthInput[0] / 4)) < MaxTake) {
MaxTake = (int) floor(static_cast<float>(pLengthInput[0] / 4));
}
for (ii = 0; ii <MaxTake; ii++) {
RetV[ii] =AutoOutput[ii];
}
R_Free(AutoOutput); // Free Memory created by function
double UseLessNormal = .4 + rnorm(0.0, 1.0) * 2;
// Completely Useless Generation of Normal
Rprintf("DemoAutoCor:: Completely Useless Normal = %.3f\n", UseLessNormal);
R_FlushConsole();
R_ProcessEvents();
return; // Return Nothing.
}
}
