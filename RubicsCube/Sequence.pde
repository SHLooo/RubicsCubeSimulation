
int moveTimes = 50;

// randomly generate a sequence of moves
void sequence_generate() {
  for (int i = 0; i < moveTimes; ++i) {
    int r = int(random(allMoves.length));
    // randomly decide the case(upper/lower) of the moves
    if (random(1) < 0.5) {
      // lower case
      sequence += allMoves[r];
    } else {
      // upper case
      sequence += allMoves[r].toUpperCase() ;
    }
  }
  println(sequence);
}


String[] allMoves = {"f", "b", "l", "r", "u", "d"};
String sequence = "";
String sequence_back = "";

// Create a sequence of moves that reverse the rubic's cube by 
// 1. reverse the order of the moves
// 2. switch the case(upper/lower) of each moves
void sequence_reverse() {
  for (int i = sequence.length() - 1; i >= 0; i--) {
    String nextMove = flipCase(sequence.charAt(i));
    sequence_back += nextMove;
  }
  println(sequence_back);
}


// A helper function that flip the case of the moves
String flipCase(char c) {
  String s = "" + c;
  if ((c >= 97) && (c <= 122)) {
    // lower case ==> upper case
    return s.toUpperCase();
  } else {
    // upper case ==> lower case
    return s.toLowerCase();
  }
}
