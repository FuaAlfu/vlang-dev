enum Character {
	walk
	eat
	sleep
	dead
}

fn main() {
	/*
	V knows that {char} is a {Character`}
	*/
	mut char := Character.eat

	//No need to use char = Character.dead here, because V knows );.
    char = .dead
    println(char) 
    match char {
	.walk { println('the Character is walking') }
	.eat { println('the Character is eating') }
	.dead { println('the Character is dying') }
	.sleep {println('the Character is sleeping')}
}
	
}