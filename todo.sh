#!/bin/bash
trap '' SIGPIPE
todo_file="$HOME/.config/hypr/todo.txt"
if [ ! -f "$todo_file" ]; then
	touch "$todo_file" 
fi
case "$1" in
	show)
		if [ -s "$todo_file" ]; then
			cat "$todo_file" | rofi -show -dmenu -p "to do list:::"
		else
			echo "No tasks" | rofi -show -demu -p "to do list:::"
		fi
		;;
	add)
		new_task=$(rofi -dmenu -p "add task: " -lines 0)
		if [ -n "$new_task" ]; then
			echo "$new_task" >> "$todo_file"
			notify-send "task added" "$new_task"
		fi
		;;
	clear)
		>"$todo_file"
		;;
	*)
		echo "Usage: $0 {show|add <item>|clear}"
		;;
esac

