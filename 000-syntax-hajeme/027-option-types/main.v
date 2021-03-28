struct User {
	id   int
	name string
}

struct Repo {
	users []User
}

fn (r Repo) find_user_by_id(id int) ?User {
	for user in r.users {
		if user.id == id {
			// V automatically wraps this into an option type
			return user
		}
	}
	return error('User $id not found')
}

fn main() {
	/*
	Option types are declared with ?Type
	*/
	repo := Repo{
		users: [User{1, 'fua'}, User{2, 'mua'}, User{3, 'nata'}]
	}
	// Option types must be handled by (or) blocks
	user := repo.find_user_by_id(2) or {
		return
	}
	println('user id: $user.id and user name is $user.name')
}