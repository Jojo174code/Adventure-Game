#!/bin/bash


# Function to display the Game of Thrones themed title card

show_title_card() {
  local title_card=(
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣻⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⣤⣿⣧⣤⡶⠄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠲⠶⣦⣤⡀⠀⠀⠀⠒⢦⣤⠖⠀⣠⣴⠶⣿⡷⣶⣤⡀⠀⢠⣤⣦⣤⣤⣤⣤⣶⡦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⣿⢻⣿⣄⠀⠀⠀⢸⡇⢀⣾⡟⠁⠀⣿⡇⠀⠹⣿⣆⢼⠁⠀⠸⣿⡇⠀⠈⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⣿⠀⠙⣿⣧⠀⠀⢸⡇⢸⣿⠁⠀⠀⣿⡇⠀⠀⢹⣿⡇⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⢿⠀⠀⠈⠻⣿⣄⢸⡇⢸⣿⡇⠀⠀⣿⡇⠀⠀⢸⣿⠇⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⣼⡀⠀⠀⠀⠘⢿⣿⡇⠀⠻⣿⣦⡀⣿⡇⠀⣠⣿⠏⠀⠀⠀⢸⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠐⠚⠛⠛⠒⠀⠀⠀⠀⠙⠃⠀⠀⠈⠙⠛⣿⡗⠛⠋⠁⠀⠀⠀⠒⠛⠛⠛⠒⠂⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⠀⢠⣤⣠⣄⣀⣀⣀⣴⣄⠀⢀⣠⣴⣿⣧⣤⣀⠀⠠⢤⣄⣤⣤⣤⣤⣤⣀⠀⠀⠀⠀⠀⢠⣴⡀⠀⠦⣤⣤⡤⠀⠀⠠⣤⣤⠄"
    "⠀⠀⢀⣿⠋⠉⢹⣿⠉⠀⢸⣇⣶⡿⠉⠀⣿⠀⠈⢻⣷⣄⠀⣿⣿⠀⠀⠀⠉⠻⣿⣆⠀⠀⠀⣾⣿⣧⠀⠀⠈⢿⣧⠀⠀⢰⡿⠁⠀"
    "⠀⠀⠀⠀⠀⠀⢸⣿⠃⠀⠀⣸⣿⠁⠀⠀⣿⠀⠀⠀⢻⣿⡆⣽⣿⠀⠀⠀⠀⠀⢻⣿⡀⠀⣸⠃⠸⣿⣇⠀⠀⠀⢻⣷⣴⡿⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠀⢸⣿⠀⠀⠀⢸⣿⡄⠀⠀⣿⠀⠀⠀⢸⣿⠇⢸⣿⠀⠀⠀⠀⠀⢸⣿⠀⢰⣿⣤⣤⣿⣿⡄⠀⠀⠀⢿⣿⠀⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠀⢸⣿⡄⠀⠀⠈⢿⣷⣄⠀⢻⠀⠀⢠⣾⠟⠀⣾⣿⠀⠀⠀⠀⣠⣿⡏⠀⣿⠁⠀⠀⠈⢿⣷⡀⠀⠀⢸⣿⠀⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠤⠿⠿⠷⠤⠀⠀⠀⠙⠻⠷⢾⠶⠾⠛⠁⠀⠰⠿⠿⠶⠶⠶⠾⠛⠁⠠⠾⠿⠤⠀⠀⠠⠼⠿⠷⠤⠤⠾⠿⠦⠄⠀⠀"
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀"
    "      ==========================="
    "      |                         |"
    "      | Author: Josiah Rhodes   |"
    "      | DATE: 10/3/2024         |"
    "      ==========================="
  )

  # Loop through each line of the title card and print it with a slight delay
  for line in "${title_card[@]}"; do
    echo -e "$line"
    sleep 0.05  # Adjust the delay (in seconds) for animation speed
  done

  # Pause for a moment before clearing the screen
  sleep 3
  clear
}
















# List of Game of Thrones themed locations for directory names
locations=("King's_Landing" "The_Eyrie" "Dragonstone" "The_Wall" "Castle_Black" "Braavos" "Meereen" "Dorne" "Highgarden")

# List of corresponding clues for each location
clues=(
  "Winter is coming. The next destination lies further south: King's Landing."
  "The Iron Throne awaits, but the true power is in the North: seek out The Eyrie."
  "Only the bravest reach The Eyrie. Your journey continues to the island fortress of Dragonstone."
  "The dragons once roamed free. Your next destination is to the frozen North: The Wall."
  "Beyond The Wall, only the Night's Watch stands. Head to Castle Black."
  "The brothers of the Night's Watch guard the realms of men. Sail to the free city of Braavos."
  "The Many-Faced God watches over Braavos. Continue to the slaver city of Meereen."
  "In Meereen, the Great Pyramid stands tall. Ride south to the sands of Dorne."
  "The Martells rule Dorne. Your quest ends in the lush gardens of Highgarden."
  "You've reached Highgarden. You stand victorious! Congratulations, you have conquered Westeros!"
)

#function to validate users input

validate_input() {
  while true; do
    read -p "Enter the number of directory levels (minimum 2, maximum 10) or Enter Q to quit program: " num_levels

    # Check if the input is a number between 2 and 10
    if [[ $num_levels =~ ^[0-9]+$ ]] && [ "$num_levels" -ge 2 ] && [ "$num_levels" -le 10 ]; then
      break

    # Check if the input is Q, q, quit, or Quit
    elif [[ "$num_levels" =~ ^(Q|q|quit|Quit)$ ]]; then
      echo "Quitting program..."
      exit 1

    # If input is invalid
    else
      echo "Invalid input. Please enter a number between 2 and 10, or Q to quit."
    fi
  done
}


# Function to create directories and place Game of Thrones themed clues
create_directories() {
  local current_dir="Westeros"
  mkdir "$current_dir"  # Create the root directory 'Westeros'

  # This is a loop to create the specified number of levels
  for ((i = 1; i <= num_levels; i++)); do
    next_dir="${locations[$i-1]}"
    mkdir "$current_dir/$next_dir"
    echo "${clues[$i-1]}" > "$current_dir/clue.txt"  # Create a clue file in the current directory
    current_dir="$current_dir/$next_dir"  # Move to the next directory
  done

  # Place the final clue in the last directory
  echo "Congratulations! You have claimed the Iron Throne at ${locations[num_levels-1]}!" > "$current_dir/clue.txt"
}

#shows the display
show_title_card


# Main script execution
echo "Welcome to the Game of Thrones Adventure Game Generator!"

# Step 1: Validate user input
validate_input

# Step 2: Create the directory structure and clues
create_directories

echo "Game of Thrones adventure game setup complete! Start in Westeros and follow the clues."
