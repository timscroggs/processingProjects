/*  Tim Scroggs
 04/06/2014
 CSCI 182_002
 Homework 6 : Arrays
 Description: The three custom functions below can be used to examine &
 manipulate arrays.
 */
 

//----------------------------------------------------------------//
//FUNCTION 1: arrayAverage has one parameter, provide an int array
//this function takes the given array values and returns their average value
 
int arrayAverage (int [] a) {
  int arraySum = 0;
  for (int i = 0; i < a.length; i++) {
    arraySum += a[i];
  }
  return arraySum/a.length;
}


//----------------------------------------------------------------//
//FUNCTION 2: using two arguments, the first being an int array and the
//second begin a value to be searched, locationOf will search the given
//int array for a given searchValue. If provided searchValue is found
//in the array it will return the index where that value occurs; however, 
//if the searchValue is NOT found, a value of -1 will be returned.

int locationOf (int [] a, int searchValue) {
  for (int i = 0; i < a.length; i++) {
    if (a[i] == searchValue) {
     return i;
   }   
    }
    return -1;
  }



//----------------------------------------------------------------//
//FUNCTION 3: provide an int array as the one argument and this function
//rightCircluarShift will take given array indexes and perform a right
//circular shift on it's values – which means all element values move one 
//index to the right, and the rightmost value "wraps around" and goes 
//into index 0

void rightCircularShift(int [] a) {
  int temp = a[a.length-1];
  for (int i = a.length - 1; i > 0; i--) { // large index to small
    a[i] = a[i-1];
  }
  a[0] = temp;
}


//----------------------------------------------------------------//




void setup() {
  //arrays to run function tests on
  int [] array1 = {3, 5, 7, 9, 11, 45, 3, 28, 19, 2};
  int [] array2 = {9, 3};
  int [] array3 = {87, 1, 222, 5, 98, 25, 2, 10, 3, 37};
  int [] array4 = {25, 4, 43, 29, 3330, 2009, 40, 4};
  int [] array5 = {444400, 399, 29384};
  int [] array6 = {523, 65, 958, 64, 3, 66};
  int [] array7 = {1, 2, 3, 4, 5, 6, 8, 79};
  int [] array8 = {46, 57, 5, 88, 9, 64, 123658};



//----------------------------------------------------------------//
//testing arrayAverage function on arrays 1 through 8

println("Testing arrayAverage function on arrays 1 through 8");
 println("\n---");
 
  
  println("Original values of array 1: ");
  println(array1);
  println("Average of values in array 1: ");
  println(arrayAverage(array1));
  println("\n");
  
  println("Original values of array 2: ");
  println(array2);
  println("Average of values in array 2: ");
  println(arrayAverage(array2));
  println("\n");
  
  println("Original values of array 3: ");
  println(array3);
  println("Average of values in array 3: ");
  println(arrayAverage(array3));
  println("\n");
  
  println("Original values of array 4: ");
  println(array4);
  println("Average of values in array 4: ");
  println(arrayAverage(array4));
  println("\n");
  
  println("Original values of array 5: ");
  println(array5);
  println("Average of values in array 5: ");
  println(arrayAverage(array5));
  println("\n");
  
  println("Original values of array 6 ");
  println(array6);
  println("Average of values in array 6: ");
  println(arrayAverage(array6));
  println("\n");
  
  println("Original values of array 7: ");
  println(array7);
  println("Average of values in array 7: ");
  println(arrayAverage(array7));
  println("\n");
  
  println("Original values of array 8: ");
  println(array8);
  println("Average of values in array 8: ");
  println(arrayAverage(array8));
  println("\n");
  
  println("//----------------------------------------------------------------//");
  
//----------------------------------------------------------------//
//testing locationOf function on arrays 1 through 8

println("Testing locationOf function on arrays 1 through 8");
 println("\n---");
 
  
  println("Original values of array 1: ");
  println(array1);
  println("Does array1 contain searchValue: 10");
  println("If not will return -1, otherwise searchValue is at index: ");
  println(locationOf(array1, 10));
  println("\n");
  
  println("Original values of array 2: ");
  println(array2);
  println("Does array1 contain searchValue: 3");
  println("If not will return -1, otherwise searchValue is at index: ");
  println(locationOf(array2, 3));
  println("\n");
  
  println("Original values of array 3: ");
  println(array3);
  println("Does array1 contain searchValue: 37");
  println("If not will return -1, otherwise searchValue is at index: ");
  println(locationOf(array3, 37));
  println("\n");
  
  println("Original values of array 4: ");
  println(array4);
  println("Does array1 contain searchValue: 300");
  println("If not will return -1, otherwise searchValue is at index: ");
  println(locationOf(array4, 300));
  println("\n");
  
  println("Original values of array 5: ");
  println(array5);
  println("Does array1 contain searchValue: 444400");
  println("If not will return -1, otherwise searchValue is at index: ");
  println(locationOf(array5, 444400));
  println("\n");
  
  println("Original values of array 6: ");
  println(array6);
  println("Does array1 contain searchValue: 66");
  println("If not will return -1, otherwise searchValue is at index: ");
  println(locationOf(array6, 66));
  println("\n");
  
  println("Original values of array 7: ");
  println(array7);
  println("Does array1 contain searchValue: 85");
  println("If not will return -1, otherwise searchValue is at index: ");
  println(locationOf(array7, 85));
  println("\n");
  
  println("Original values of array 8: ");
  println(array8);
  println("Does array1 contain searchValue: 88");
  println("If not will return -1, otherwise searchValue is at index: ");
  println(locationOf(array8, 88));
  println("\n");
  
  println("//----------------------------------------------------------------//");
  println("\n");
  
//----------------------------------------------------------------//
// test out rightCircluarShift on arrays 1 through 8

println("Testing rightCircluarShift function on arrays 1 through 8");
 println("\n---");
 
 println("Orignal array 1 values:");
 println(array1);
 rightCircularShift(array1);
 println("array 1 was circular shifted right.\narray 1 values NOW:");
 println(array1);
 println("\n");
 
 println("array 2 values:");
 println(array2);
 rightCircularShift(array2);
 println("array 2 was circular shifted right.\narray 2 values NOW:");
 println(array2);
 println("\n");
 
 println("array 3 values:");
 println(array3);
 rightCircularShift(array3);
 println("array 3 was circular shifted right.\narray 3 values NOW:");
 println(array3);
 println("\n");
 
 println("array 4 values:");
 println(array4);
 rightCircularShift(array4);
 println("array 4 was circular shifted right.\narray 4 values NOW:");
 println(array4);
 println("\n");
 
 println("array 5 values:");
 println(array5);
 rightCircularShift(array5);
 println("array 5 was circular shifted right.\narray 5 values NOW:");
 println(array5);
 println("\n");
 
 println("array 6 values:");
 println(array6);
 rightCircularShift(array6);
 println("array 6 was circular shifted right.\narray 6 values NOW:");
 println(array6);
 println("\n");
 
 println("array 7 values:");
 println(array7);
 rightCircularShift(array7);
 println("array 7 was circular shifted right.\narray 7 values NOW:");
 println(array7);
 println("\n");
 
 println("array 8 values:");
 println(array8);
 rightCircularShift(array8);
 println("array 8 was circular shifted right.\narray 8 values NOW:");
 println(array8);
 println("\n");
 
 
 }

