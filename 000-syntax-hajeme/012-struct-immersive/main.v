struct User {
	age int
}

fn (u User) can_register() bool {
	return u.age > 16
}
fn (u User) can_register_1() bool {
	return u.age >= 100
}

fn main() {

	//constructing 
	user := User{
	age: 10
}

    println(user.can_register()) // "false"
	println('---')

	///constructing
    user2 := User{
	age: 20
}
    println(user2.can_register()) // "true"
	println('---')

	///constructing
    user3 := User{
	age: 90
}

   println(user3.can_register_1()) // "false"
   println('---')
	
}
