// Adam Whitley
// Mon Mar 31 2014
// CSCI 182

// Return a new array with identical legnth
// and all the same values as the parameter a
int [] arrayCopy(int [] a) {
  int [] douglas = new int[a.length];
  for(int i = 0; i < a.length; i++) {
    douglas[i] = a[i];
  }
  return douglas;
}

// Increment every element of the array a by incValue.
void addToElements(float [] a, float incValue) {
  for(int i = 0; i < a.length; i++) {
    a[i] += incValue;
  } 
}

// Return the largest value of all elements of the array a
int arrayMax(int [] a) {
  int biggestSoFar = a[0];
  for(int i = 0; i < a.length; i++) {
    if(a[i] > biggestSoFar) {
      biggestSoFar = a[i];
    } // end of if statement
  } // end of the for loop
  return biggestSoFar;
} // end of arrayMax function definition

void setup() {
  float [] stuff = {124.34, 346.12, 647.23};
  int [] blargh = {300, 4, -5};
  
  println(stuff);
  addToElements(stuff, 100.0);
  println(stuff);
  
  int maxValue = arrayMax(blargh);
  println(maxValue);
  
  int [] dennis = arrayCopy(blargh);
  println(dennis);
}
