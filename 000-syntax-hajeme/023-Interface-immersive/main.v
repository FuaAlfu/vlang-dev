struct Hoo {}

fn (h Hoo) yo() string {
	return 'yo..'
}

interface Yoo {}

fn (y Yoo) yo() string {
	return 'yoooo!'
}

fn new_yo() Yoo {
	return Hoo{}
}

fn main() {
	/*
	Interface method definitions
	 an interface may implement a method. 
	 These methods are not implemented by structs which implement that interface
	*/
	y := Hoo{}
	assert y.yo() == 'yuu!'
	ny := new_yo()
	assert ny.yo() == 'yo..'
	if ny is Hoo {
		println(ny.yo()) 
	}
}