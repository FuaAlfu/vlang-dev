struct DB{}

struct Data<T> {
    db DB
}

struct User {
	id   int
	name string
}

struct Post {
	id   int
	user_id int
}

fn new_data<T>(db DB) Data<T> {
    return Data<T>{db: db}
}

// This is a generic function. V will generate it for every type it's used with.
fn (d Data<T>) find_by_id(id int) ?T {
    table_name := T.name // in this example getting the name of the type gives us the table name
    return d.db.query_one<T>('select * from $table_name where id = ?', id)
}

fn main() {
	/*
	Currently generic function definitions must declare their type parameters,
	but in future V will infer generic type parameters from single-letter
	type names in runtime parameter types.
	*/
	db := new_db()
users_data := new_data<User>(db) // returns Repo<User>
posts_data := new_data<Post>(db) // returns Repo<Post>
user := users_data.find_by_id(1)? // find_by_id<User>
post := posts_data.find_by_id(1)? // find_by_id<Post>
}