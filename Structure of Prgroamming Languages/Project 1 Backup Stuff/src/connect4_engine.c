/* 
   zzNAMEzz 
   Adam Winebarger & Cody Delano

   Place all your Connect4 functions here --- except for main.
   main() needs to go in its own separate .c file.3
*/


#include "connect4.h"

//static char *board; //Of course I suppose this is an option too. Nope. Let's not do this

// You don't have to use this.  It's just here as a demo.

char *generateBoard(int row, int col);

//Basically just trying to say that this function is deprecated going forward... still left it in though
int x_in_a_rowD(int x, int length, int array[]) {
    
    //remember x in a row will have to host all of the logical bits for win-condition checking in this one function

    // This isn't correct.  It's just for demonstration purposes.
    if (length >=2 && array[0] == array[1]) {
        return array[0];
    } else {
        return -1;
    };
}




//x_in_a_row
bool x_in_a_row() {
    /*
     *not sure if we should pass the pointer to the board as an input parameter here or just have it be an instance variable.
     * But we should also have the location of the most recently input peice as input parameters (Either just the column or the
     * actual location of the most recent piece... not sure yet). But from there, all we really have to do is check and see if
     * the pieces to the left and right match (horizontal), upper and lower match (vertical), and diagonals match (ulbr and urbl),
     * incrementing for every match they find and breaking from those loops when they either hit the bounds or find a non-matching or
     * empty piece.
     */

    return false;
}


void newGame(void) {
    //printf("Testing new Game\n"); //passes


}
