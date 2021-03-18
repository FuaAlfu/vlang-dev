struct Tv {
	company_name string
}

struct Phone {
	company_name string
}

interface Something {}

fn main() {
	/*
	Casting an interface
	*/ 
	tv := Tv{
		company_name: 'sony'
	}
	announce(tv.company_name)
}

fn announce(s Something) {
	if s is Tv {
		println('device $s.company_name tv') // `s` is automatically cast to `type` (smart cast)
	} else if s is Phone {
		println('device $s.company_name phone')
	} else {
		println('something else')
	}
}