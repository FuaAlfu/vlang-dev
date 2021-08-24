import vweb
import json

struct App {
	vweb.Context
}

fn main() {
	vweb.run<App>(9000)
}

['/data'; get]
pub fn (mut app App) data() vweb.Result {
//	data := ['user:one']
	return app.json(json.encode(data))
}