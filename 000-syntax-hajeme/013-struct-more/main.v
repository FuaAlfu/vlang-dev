struct Bank {
mut:
	account_number int
	balance f64
}

struct Person {
	Bank
	name string
	age int
	stuff   []int 
}

struct Coordinate {
	y f64
	x f64
}


fn main() {
	/*
	Embedded structs
	literal syntax
	*/

	//constructing : Embedded structs
	p := Person{
		Bank:{
			account_number: 345654321
			balance: 3343222.9876
		}
		name: 'jhon'
		age: 42
		stuff: [101,2000,2]
	}
	println('his name is $p.name he got $p.balance and his stuff is $p.stuff')
	println('---')
	//----------------------------------------------------------

	
	//literal syntax
	mut c := Coordinate{
	y: 44.212
	x: 667.2
}
    println('horizontal position: $c.x vertical position: $c.y')
	println('---')

    // we could omit the struct name even when it's already tooken
    c = {
	y: 14.012
	x: -278.20
}
   println('horizontal position: $c.x vertical position: $c.y')
}