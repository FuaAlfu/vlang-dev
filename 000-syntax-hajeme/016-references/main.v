struct Love {
	a int
}

fn main() {
	//to be..
}

fn bar(love &Love) {
	println(love.a)
}


fn (love Love) bar_1() {
	println(love.a)
}

fn (mut love Love) coffe() {
	println(love.a)
}