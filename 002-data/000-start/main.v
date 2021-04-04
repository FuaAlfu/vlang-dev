//the code not stable yet
module main

import vweb

struct App {
	vweb.Context
}

fn main() {
	port := 9090
	vweb.run<App>(port)
}

pub fn (mut app App) index() vweb.Result {
	return app.text('servering on http://localhost:9090!')
}
