//the code not stable yet
module main

import vweb
import time

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
	return app.text('yo, servering on http://localhost:9000! time: '+time.now().format())
}
