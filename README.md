# To-Do List Script with Rofi Integration for waybar

This script allows you to manage a to-do list directly from the Waybar and rofi, making it easy to add, view, and clear tasks without leaving your desktop environment. The script utilizes `rofi` for interactive task management.

## Features

- **Show Tasks**: View all your to-do tasks using `rofi`'s dmenu mode.
- **Add Tasks**: Add new tasks to your to-do list using `rofi`'s input mode.
- **Clear Tasks**: Clear all tasks from the to-do list with a single command.

## Prerequisites

Before using this script, make sure you have the following installed:

- `rofi`: A window switcher and application launcher used for the to-do list display and input.
- `notify-send` (optional): For desktop notifications when adding new tasks.

To install `rofi` on Arch Linux-based systems, use:

```bash
sudo pacman -S rofi
```
# Setup
1. Clone or Download the script
2. Configure Waybar in (~/.config/waybar/waybar.jsonc or ~/.config/waybar/waybar.json ) add "custom/todo" in modules-(left/right)
3. add this in waybar.jsonc/waybar.json file
```json/jsonc
"custom/todo": {
    "exec": "echo to-do",
    "click": "bash /path/to/todo.sh show",
    "interval": 300,
    "tooltip": "Click to view" #although i dont know if this really works
}
```
### Make the .sh file executable using chmod
