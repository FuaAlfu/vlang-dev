fn main() {
	/*
	To change the value of the variable we use =
	but in vlang, variables are immutable by default.
	 To be able to change the value of the variable,
	  we have to declare it with {{mut}}.
	*/

	mut age := 20 //use mut to change the value of the age
    println(age)
    age = 21
    println(age)
	println('---')

	/*
	a way to swap multiple variables
	notice that, their values can be swapped without an intermediary variable.
	*/

	mut a := 11
    mut b := 22
    println('$a, $b') 
    a, b = b, a
    println('$a, $b') 
	c := a + b
	println(c)
}