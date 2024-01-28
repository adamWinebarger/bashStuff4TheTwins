#include "unity.h"
#include "connect4.h"

void setUp(void) {
    // set stuff up here
}

void tearDown(void) {
    // clean-up stuff up here
}

/////////////////////////////////////////////
//
// x_in_a_row Tests
//
/////////////////////////////////////////////

void sample_pass() {
  int array[] = {3, 3, 4, 5, 7, 2 };
  TEST_ASSERT_EQUAL(3, x_in_a_rowD(2, 6, array));
  //TEST_ASSERT_EQUAL(4, x_in_a_row(2, 6, array)); //worked the way we wanted it to
}

void sample_fail() {
  int array[] = {2, 2, 3, 3, 4, 5, 7};
  TEST_ASSERT_EQUAL(3, x_in_a_rowD(2, 7, array));
}


//even though x in a row is a single function, it would probably make sense to test vertical, horizontal, and then
// tr to bl and vice-versa

/* Win condition met */

void winsHorizontal() {

  //Include tests for checking x_in_a_row from left and right bounds as well

}


void winsVertical() {
  //Include tests for checking x_in_a_row from upper and lower bounds
}

void winsDiagonal() {

  //include tests for checking x_in_a_row from all bounds
}

//^^^ Probably best to use a pointer as an input parameter for these

/* Check player input */
void boardDidGenerate() {
  //needs to start a new game with valid paramaters and ensure that the board was created to the proper specifications

  //A null-terminating character might be helpful in ensureing that there are as many spaces on the board as we want and not a
  //Single one more
}

void boardRemainedUnchagnedUponInvalidInput() {
  //here it would probably make sense to have a variable be equivelent to the board pre-move,
  //then get the board a second time in a second variable and check to see if anything changed from one to the next

  //here, either a null-terminating character would be good or just a single for loop like
  // for (int i = 0; i < row*col; i++)... assuming we can pull row and col

  //For cloning the contents, we could also do memcpy(newPTr, oldPtr, malloc(sizeof(char) * (row * col + 1))) if I'm correct
}

void fullColumnRefusesNewPeice() {
  //If a column is full up, we want some sort of catchment to make sure that the full column won't accept an additional piece
  //
}

void quitOnQ() {
  //This one should be pretty self-explanatory. Only question is should it be case-sensitive or trigger on q and Q?
  //EDIT: it should work for both... Although I'm not 100% sure how we'd test this on this end. Might be better for the ruby side.
  //Although I suppose we could push goodbye as a string to the text prompt before exiting and this could simply pull that...
  //tough call.
}

/*Default board generation */

//Ensures that a 6x7 board is generated if one or more arguments is missing from initial execution.
void defaultBoardGeneratedUponMissingArg() {
  //doing missing one arg per and then with no args seems like the play here. Not sure if we can have multiple asserts in one
  //test case though; EDIT: Looks like we can
}

//Checks if a default board is built when an invalid argument is input on execution
void defaultBoardGeneratedUponInvalidInput() {

}

//...also might want to make one that generates a max-16 dimension if something over 16 is input... maybe





/////////////////////////////////////////////
//
// Supplemental things
//
/////////////////////////////////////////////
void testTester() {
  //may acutally not end up using this. KDevelop was being weird with the makeFiles/executables
  // and so I was going to use this to check manual recompilation
}

/////////////////////////////////////////////
//
// Main
//
/////////////////////////////////////////////

int main(void) {
    UNITY_BEGIN();
    RUN_TEST(sample_pass);
    RUN_TEST(sample_fail);


    printf("Tests concluded\n");
    return UNITY_END();
}
