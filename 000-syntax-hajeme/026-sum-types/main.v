struct One {}

struct Two {}

struct Three {}

struct Four {}

type Sum = One | Two | Three | Four


fn main() {	

	//our type
    sum := Sum(Two{})

	//The built-in method type_name returns the name of the currently held type.
    assert sum.type_name() == 'Two'
    println(sum)
}