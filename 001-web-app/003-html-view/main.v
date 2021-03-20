//the code not stable yet
module main

import vweb

struct App {
	vweb.Context
}

fn main() {
	/*
	The App struct is an entry point of our web application
	*/
	vweb.run<App>(9000)
}

pub fn (mut app App) index() vweb.Result {
	message := 'yo everyone'
	return $vweb.html()
}