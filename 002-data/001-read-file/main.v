module  main

import os

fn main() {
	mut vertical_dir := 0
	mut horizontal_dir := 0

	lines := os.read_lines('file.txt') or {panic(err)}

	//range over
	for line in lines{
		line_parts := line.split(' ')
		dir := line_parts[0]
		magnitude := line_parts[1].int()

		vertical_dir += match dir{
			'up' {-magnitude}
			'down' {magnitude}
			else {0}
		}
		horizontal_dir += match dir{
		    'forward' {-magnitude}
			else {0}
		}
	}

	println(horizontal_dir * vertical_dir)
}