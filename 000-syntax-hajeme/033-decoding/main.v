import json

struct Foo {
	x int
}

struct User {
	name string
	age  int
	// Use the [skip] keyword attribute to skip certain fields
	foo Foo [skip]

	// If the field name is different in JSON, it can be specified
	last_name string [json: lastName]
	
	password string
}


fn main(){
	/*
	Decoding JSON
	*/
	person := '{ "name": "fua", "lastName": "alfu", "age": 30, "password": "qwerty" }'
    user := json.decode(User, person) or {
	eprintln('Failed to decode json')
	return
}
    println(user.name)
    println(user.last_name)
    println(user.age)

    // You can also decode JSON arrays:
    foos_data := '[{"x":987},{"x":789}]'
    foos := json.decode([]Foo, foos_data) ?
    println(foos[0].x)
    println(foos[1].x)
}