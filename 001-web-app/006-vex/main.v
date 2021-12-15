module main

import nedpals.vex.server
import nedpals.vex.ctx
import nedpals.vex.router

fn mainpage(){
	mut app := router.new()
	app.route(.get, '/users/:name', fn (req &ctx.Req, mut res ctx.Resp) {
		name := req.params['name']
		res.send('Hello, $name!', 200)
	})
	server.serve(app, 8000)
}

fn main() {
	mainpage()
}