///////////////////////////////
// TrialSize.cc
// C++ Function File
#include "TrialSize.h"
#include "R.h" // R memory io
#include "Rmath.h" // R math functions
Xclass::Xclass(double *InputVec, int LengthInput) {
this->XLength = LengthInput;
this->XVec = (double*) Calloc( this->XLength,
double ); // Calloc is R memory Call
for (int ii = 0; ii < XLength; ii++) {
XVec[ii] = InputVec[ii];
}
}
Xclass::~Xclass() {
Free(XVec);
}
/////////////////////////////////////////////
// Xclass:AutoCor()
// Returns AutoCorrelation of Given Vector
double* Xclass::AutoCor() {
int DoDrops =  XLength / 4 ; // AutoCor to +- L/4 positions;
double *ReturnVec = (double *) Calloc( DoDrops, double);
double RecordSum;
int ii, jj;
for (ii = 0; ii < DoDrops; ii++) {
RecordSum = 0;
for (jj = ii; jj < XLength-1; jj++) {
RecordSum += (XVec[jj+1]-XVec[jj]) * (XVec[jj-ii+1] - XVec[jj-ii]);
}
ReturnVec[ii] = RecordSum / ((double) XLength - ii );
}
return(ReturnVec);
}
double *TrialSize(double *InputVec, int LengthInput) {
Xclass *MyXClass = new Xclass(InputVec, LengthInput);
double *Returner = MyXClass->AutoCor();
delete(MyXClass); // Delete memory caused by constructing Xclass;
return( Returner );
}
