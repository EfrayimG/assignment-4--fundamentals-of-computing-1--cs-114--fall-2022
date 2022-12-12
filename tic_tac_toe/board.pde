import java.util.Scanner;

int count = 0;

boolean userWin() {
  if (userPosition[0][0] == 1 && userPosition[1][0] == 1 && userPosition[2][0] == 1) {
    System.out.println("User wins!");
    return true;
  } else if (userPosition[0][1] == 1 && userPosition[1][1] == 1 && userPosition[2][1] == 1) {
    System.out.println("User wins!");
    return true;
  } else if (userPosition[0][2] == 1 && userPosition[1][2] == 1 && userPosition[2][2] == 1) {
    System.out.println("User wins!");
    return true;
  } else if (userPosition[0][0] == 1 && userPosition[0][1] == 1 && userPosition[0][2] == 1) {
    System.out.println("User wins!");
    return true;
  } else if (userPosition[1][0] == 1 && userPosition[1][1] == 1 && userPosition[1][2] == 1) {
    System.out.println("User wins!");
    return true;
  } else if (userPosition[2][0] == 1 && userPosition[2][1] == 1 && userPosition[2][2] == 1) {
    System.out.println("User wins!");
    return true;
  } else if (userPosition[0][0] == 1 && userPosition[1][1] == 1 && userPosition[2][2] == 1) {
    System.out.println("User wins!");
    return true;
  } else if (userPosition[2][0] == 1 && userPosition[1][1] == 1 && userPosition[0][2] == 1) {
    System.out.println("User wins!");
    return true;
  } else
    return false;
}

boolean computerWin() {
  if (computerPosition[0][0] == 1 && computerPosition[1][0] == 1 && computerPosition[2][0] == 1) {
    System.out.println("Computer wins, user loses.");
    return true;
  } else if (computerPosition[0][1] == 1 && computerPosition[1][1] == 1 && computerPosition[2][1] == 1) {
    System.out.println("Computer wins, user loses.");
    return true;
  } else if (computerPosition[0][2] == 1 && computerPosition[1][2] == 1 && computerPosition[2][2] == 1) {
    System.out.println("Computer wins, user loses.");
    return true;
  } else if (computerPosition[0][0] == 1 && computerPosition[0][1] == 1 && computerPosition[0][2] == 1) {
    System.out.println("Computer wins, user loses.");
    return true;
  } else if (computerPosition[1][0] == 1 && computerPosition[1][1] == 1 && computerPosition[1][2] == 1) {
    System.out.println("Computer wins, user loses.");
    return true;
  } else if (computerPosition[2][0] == 1 && computerPosition[2][1] == 1 && computerPosition[2][2] == 1) {
    System.out.println("Computer wins, user loses.");
    return true;
  } else if (computerPosition[0][0] == 1 && computerPosition[1][1] == 1 && computerPosition[2][2] == 1) {
    System.out.println("Computer wins, user loses.");
    return true;
  } else if (computerPosition[2][0] == 1 && computerPosition[1][1] == 1 && computerPosition[0][2] == 1) {
    System.out.println("Computer wins, user loses.Computer wins, user loses.");
    return true;
  } else
    return false;
}

double boardFull() {
  int sum = 0;
  for (int i = 0; i <= 2; i++)
    for (int j = 0; j <= 2; j++)
      sum = sum + spotFull [i][j];
  return sum / 9;
}

void keyPressed() {
  if (userWin() == false && computerWin() == false && gameTie() == false) {
    userInput();
    userWin();
    computerWin();
    gameTie();
    if (userWin() == false && computerWin() == false && gameTie() == false) {
      System.out.println("Game still in progress");
    } else if (userWin() == true || computerWin() == true || gameTie() == true) {
      System.out.println("The game has ended.");
    }
  }
}

boolean gameTie() {
  if (boardFull() < 1) {
    return false;
  } else {
    System.out.println("User and computer tied!");
    return true;
  }
}


void userInput() {
  if (key == '0' && spotFull[0][0] == 0) {
    drawO(0, 0);
    spotFull[0][0] = 1;
    userPosition[0][0] = 1;
  } else if (key == '0' && spotFull[0][0] == 1) {
    System.out.println("Spot already played, please pick another.");
    return;
  }

  if (key == '1' && spotFull[1][0] == 0) {
    drawO(1, 0);
    spotFull[1][0] = 1;
    userPosition[1][0] = 1;
  } else if (key == '1' && spotFull[0][0] == 1) {
    System.out.println("Spot already played, please pick another.");
    return;
  }

  if (key == '2' && spotFull[2][0] == 0) {
    drawO(2, 0);
    spotFull[2][0] = 1;
    userPosition[2][0] = 1;
  } else if (key == '2' && spotFull[0][0] == 1) {
    System.out.println("Spot already played, please pick another.");
    return;
  }

  if (key == '3' && spotFull[0][1] == 0) {
    drawO(0, 1);
    spotFull[0][1] = 1;
    userPosition[0][1] = 1;
  } else if (key == '3' && spotFull[0][0] == 1) {
    System.out.println("Spot already played, please pick another.");
    return;
  }

  if (key == '4' && spotFull[1][1] == 0) {
    drawO(1, 1);
    spotFull[1][1] = 1;
    userPosition[1][1] = 1;
  } else if (key == '4' && spotFull[0][0] == 1) {
    System.out.println("Spot already played, please pick another.");
    return;
  }

  if (key == '5' && spotFull[2][1] == 0) {
    drawO(2, 1);
    spotFull[2][1] = 1;
    userPosition[2][1] = 1;
  } else if (key == '5' && spotFull[0][0] == 1) {
    System.out.println("Spot already played, please pick another.");
    return;
  }

  if (key == '6' && spotFull[0][2] == 0) {
    drawO(0, 2);
    spotFull[0][2] = 1;
    userPosition[0][2] = 1;
  } else if (key == '6' && spotFull[0][0] == 1) {
    System.out.println("Spot already played, please pick another.");
    return;
  }

  if (key == '7' && spotFull[1][2] == 0) {
    drawO(1, 2);
    spotFull[1][2] = 1;
    userPosition[1][2] = 1;
  } else if (key == '7' && spotFull[0][0] == 1) {
    System.out.println("Spot already played, please pick another.");
    return;
  }

  if (key == '8' && spotFull[2][2] == 0) {
    drawO(2, 2);
    spotFull[2][2] = 1;
    userPosition[2][2] = 1;
  } else if (key == '8' && spotFull[0][0] == 1) {
    System.out.println("Spot already played, please pick another.");
    return;
  }

  if (key != '0' && key != '1' && key != '2' &&
    key != '3' && key != '4' && key != '5' &&
    key != '6' && key != '7' && key != '8') {
    System.out.println("You may only enter a number between 0 and 8");
  } else if (boardFull() < 1 && userWin() == false && computerWin() == false && gameTie == false) {
    count++;
    computerInput();
  }
}
void computerInput() {
  int computerSelection = (int)(Math.random() * 9);

  if (computerSelection == 0 && spotFull[0][0] == 0) {
    drawX(0, 0);
    spotFull[0][0] = 1;
    computerPosition[0][0] = 1;
  } else if (computerSelection == 0 && spotFull[0][0] == 1) {
    computerInput();
  }

  if (computerSelection == 1 && spotFull[1][0] == 0) {
    drawX(1, 0);
    spotFull[1][0] = 1;
    computerPosition[1][0] = 1;
  } else if (computerSelection == 1 && spotFull[1][0] == 1) {
    computerInput();
  }

  if (computerSelection == 2 && spotFull[2][0] == 0) {
    drawX(2, 0);
    spotFull[2][0] = 1;
    computerPosition[2][0] = 1;
  } else if (computerSelection == 2 && spotFull[2][0] == 1) {
    computerInput();
  }

  if (computerSelection == 3 && spotFull[0][1] == 0) {
    drawX(0, 1);
    spotFull[0][1] = 1;
    computerPosition[0][1] = 1;
  } else if (computerSelection == 3 && spotFull[0][1] == 1) {
    computerInput();
  }

  if (computerSelection == 4 && spotFull[1][1] == 0) {
    drawX(1, 1);
    spotFull[1][1] = 1;
    computerPosition[1][1] = 1;
  } else if (computerSelection == 4 && spotFull[1][1] == 1) {
    computerInput();
  }

  if (computerSelection == 5 && spotFull[2][1] == 0) {
    drawX(2, 1);
    spotFull[2][1] = 1;
    computerPosition[2][1] = 1;
  } else if (computerSelection == 5 && spotFull[2][1] == 1) {
    computerInput();
  }

  if (computerSelection == 6 && spotFull[0][2] == 0) {
    drawX(0, 2);
    spotFull[0][2] = 1;
    computerPosition[0][2] = 1;
  } else if (computerSelection == 6 && spotFull[0][2] == 1) {
    computerInput();
  }

  if (computerSelection == 7 && spotFull[1][2] == 0) {
    drawX(1, 2);
    spotFull[1][2] = 1;
    computerPosition[1][2] = 1;
  } else if (computerSelection == 7 && spotFull[1][2] == 1) {
    computerInput();
  }

  if (computerSelection == 8 && spotFull[2][2] == 0) {
    drawX(2, 2);
    spotFull[2][2] = 1;
    computerPosition[2][2] = 1;
  } else if (computerSelection == 8 && spotFull[2][2] == 1) {
    computerInput();
  }
}
