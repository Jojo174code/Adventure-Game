# Adventure-Game


This script creates a Game of Thrones-themed adventure game generator that guides the user through a series of directories, with each directory containing clues related to a specific location from the show. Here's a breakdown of what the code does:

Functionality:

1) Title Card Display: The script starts by displaying an ASCII art title card, styled with Game of Thrones elements, and a slight delay between each line for animation.

2) User Input Validation: It prompts the user to enter the number of directory levels they want (between 2 and 10). If the input is invalid, the user is asked to try again. The user can also quit the program by entering "Q" or "quit."

3) Directory Creation: Based on the user input, it creates a nested directory structure under a root directory named "Westeros." Each subdirectory corresponds to a location from the Game of Thrones universe, such as "King's Landing," "Dragonstone," etc.

4) Clue Files: A corresponding clue is placed in each directory, leading the player to the next location. The last directory contains a congratulatory message.

Instructions for Use:

1) Save the script as create_adventure.sh.

2) Make the script executable by running the following command:

chmod +x create_adventure.sh


3) Run the script with the command:

./create_adventure.sh

4) The script will display the title card and then prompt you to enter the number of directory levels (between 2 and 10). If you enter a valid number, it will generate the directories and clues.

5) Once the directories are created, you can navigate through them, reading the clues along the way.

Example Output:

Enter the number of directory levels (minimum 2, maximum 10) or Enter Q to quit program: 3

Creating directories and clues...

Game of Thrones adventure game setup complete! Start in Westeros and follow the clues.

The user will then see the created directories under "Westeros" and can follow the clues to the final destination.
