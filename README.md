
<div align="center">

# 🐍 Snake Shell

### A Snake game built with Bash.

A terminal game developed to explore
shell scripting, terminal manipulation, and game logic.

![Bash](https://img.shields.io/badge/Bash-121011?style=flat&logo=gnubash&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?style=flat&logo=linux&logoColor=black)
![Status](https://img.shields.io/badge/Status-Stable-green)

</div>

---

## About

The project focuses on learning shell scripting concepts,
including arrays, functions, loops, keyboard input,
and terminal manipulation using `tput`.

## Features

- Snake gameplay in the terminal
- WASD keyboard controls
- Randomly generated apples
- Snake growth after collecting apples
- Score tracking
- Wall and self-collision detection
- Modular shell script architecture

## Getting Started

### Requirements

- Linux
- Bash
- A terminal supporting `tput` 
- Standard utilities: `awk`, `sed`, `sleep`, and `clear`

### Installation

Clone the repository:

```bash
git clone https://github.com/arthurCanan/snake_shell.git
```

Navigate to the project directory:

```bash
cd snake_shell
```

Run the game:

```bash
chmod u+x ./main.sh
./main.sh
```

## Controls

| Key | Action |
|-----|--------|
| W | Move up |
| A | Move left |
| S | Move down |
| D | Move right |
| Q | Leave the current game |
| ENTER | Start the game |
| ESC | Exit from the main menu |

## Project Structure

```text
snake_shell/
├── main.sh
├── config.sh
├── input.sh
├── rules/
│   ├── food.sh
│   ├── game_logic.sh
│   └── snake.sh
└── views/
    ├── board.sh
    ├── food.sh
    ├── score.sh
    └── snake.sh
```

### Architecture

| Component | Responsibility |
|-----------|----------------|
| main.sh | Main loop and game initialization |
| config.sh | Game constants and initial state |
| input.sh | Movement based on direction |
| rules/ | Game mechanics and collision logic |
| views/ | Terminal rendering functions |

## What I Learned

This project was created as a practical exercise in:

- Bash scripting and modular code organization
- Working with arrays and shell variables
- Handling keyboard input in a terminal
- Using `tput` for cursor movement and rendering
- Implementing game loops and collision detection
