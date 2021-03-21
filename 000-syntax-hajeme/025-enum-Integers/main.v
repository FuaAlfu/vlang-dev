enum Books {
	one = 33
	two = 9
	three = 2
	four = 1
	five
}

fn main() {

	/*
	operations are not allowed on enum variables 
	they must be explicity cast to int..
	*/
	b1 := int(Books.one)
    b2 := int(Books.two)
    b3 := int(Books.three)
    b4 := int(Books.four)
    b5 := int(Books.five)
    println('Books fees: $b1, $b2, $b3, $b4, $b5')
}