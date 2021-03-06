struct User {
	//field
	name string
	age  int
	money f64
}

fn main() {

	/*
	Heap structs
    Structs are allocated on the stack. To allocate a struct on the heap and get a reference to it, use the & prefix:
	*/

    mut user_ := User{
	name: 'Todd'
	age: 42
	money: 4545453.98989864
   }
     println('user name is $user_.name and his age about $user_.age he got: $user_.money')
	 println('---')

    //constructing a heap struct :: pointers
    u := &User{'jhon',56,2233.8777}
	println(u)
    println(u.age)
	println('---')

	//sorting structs  :: with arrays
	mut users := [User{'alinah',21,45.09}, User{'mua',26,666755.9989876}, User{'sarah',42,7765.8765}]
	println(users)
    users.sort(a.age < b.age) // sort by User.age int field
	println(users)
    users.sort(a.name > b.name) // reverse sort by User.name string field
	println(users)
	println('---')
}

