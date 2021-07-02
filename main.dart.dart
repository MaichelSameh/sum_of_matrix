import 'dart:io';

void main() {
  //initializing the matrix
  List<List<int>> matrix = [[1, 2, 3], [1, 2, 3], [1, 2, 3],];

  //now let's get the data from the user
  //first we need to clean our matrix
  matrix.clear();

  print("Enter how many columns you gonna store: ");
  //then we need to get how many columns we gonna be storing
  int columnSize = int.tryParse(stdin.readLineSync().toString()) ?? 0;

  //now let's do the same with the row
  //then we need to get how many rows we gonna be storing in each column
  print("Enter how many rows you gonna store: ");
  int rowSize = int.tryParse(stdin.readLineSync().toString()) ?? 0;

  //now let's get the elements from the user
  for(int row = 0; row < rowSize; row++) {
    //adding a new row to our column
    matrix.add([]);
    //adding the elements to the row
    for(int column = 0; column < columnSize; column++) {
      print("Enter the element in the column $column and row $row: ");
      //accessing the row by its index, then we are adding the value that the user entered
      matrix[row].add(int.tryParse(stdin.readLineSync().toString()) ?? 0);
    }
  }
  //creating a variable to hols the sum of the matrix
  int sum = 0;

  //looping throw each element in the matrix
  //first looping throw each column
  for(int column = 0; column < matrix.length; column++) {
    // then let's loop throw each row
    for (int row = 0; row < matrix[column].length; row++) {
      sum += matrix[column][row];
    }
  }
  //printing put the result
  print("The sum of the matrix is $sum");
}