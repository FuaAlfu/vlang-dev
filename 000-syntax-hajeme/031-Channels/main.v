fn f(ch chan int) {
	ch <- "hi V"
}

fn main() {
	/*
	Channels are the preferred way to communicate between coroutines.
	*/
	ch := chan int{}
	go f(ch)
	println('...')
	ch.close()
	
}