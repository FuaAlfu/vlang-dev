struct St {
mut:
	x int 
}

//here
fn (shared b St) g() {
	lock b {
		// read/modify/write b.x
	}
}

fn main() {
	/*
	Data can be exchanged between a coroutine
	and the calling thread via a shared variable
	use {`shared` keyword} and passed to the coroutine...
	*/
	shared a := St{
		x: 10
	}
	go a.g()
	// ...
	rlock a {
		// read a.x
		println("value: $a.x")
	}
}