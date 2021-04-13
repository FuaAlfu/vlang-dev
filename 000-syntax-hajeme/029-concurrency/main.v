import math

fn foo(a f64, b f64, c f64) { 
	e := math.sqrt(a * a + b * b + c * c)
	println(e)
}

fn main() {
	/*
	like golang use go keyword to run
	parallel thread
	*/
	go foo(2, 4,8)
}