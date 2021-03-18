//the code not stable yet
module main

import vweb

struct App {
	vweb.Context
}

fn main() {
	vweb.run<App>(9000)
}

pub fn (mut app App) index() vweb.Result {
	return app.text('yo, servering on http://localhost:9000!')
}

pub fn (app &App) init() {
}

pub fn (app &App) init_once() {
}