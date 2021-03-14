import hi
import da

fn main() {
	/*
	Module names should be short, under 10 characters.
    Module names must use snake_case.
    Circular imports are not allowed.
    You can have as many .v files in a module as you want.
    You can create modules anywhere.
    All modules are compiled statically into a single executab
	*/
    hi.say_hi()
	println('---')
	da.da()
}