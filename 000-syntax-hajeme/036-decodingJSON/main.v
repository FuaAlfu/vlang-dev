import json


struct User {
	user_name string
    password string
}

struct Person{
    name string
	age  int
}

struct Example{
    // we may use `skip` keyword attribute to skip certain fields
	p Person [skip]
	// If the field name is different in JSON, it can be specified
	for_example string [json: forExample]
}

user_info := '{ "user_name": "Bil", "password": "42gool" }'
user := json.decode(User, user_info) or {
	eprintln('Failed to decode a json string')
	return
}

person_info := '{ "name": "fua", "age": 30 }'
p1 := json.decode(Person, person_info) or {
	eprintln('Failed to decode a json string')
	return
}

println(user.user_name)
println(user.password)
println("----")
println(p1.name)
println(p1.age)
println('person name is: $p1.name , and his age about $p1.age')