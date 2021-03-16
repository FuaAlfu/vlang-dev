struct Jhon {
	bank_name string
}

struct Doe {
	bank_name string
}

// unlike Go and like TypeScript, V's interfaces can define fields, not just methods.
interface Balance {
	bank_name string
	balance() f64
}

fn main() {
	//constructing data..
	jhon := Jhon{'mitsubish-genko'}
    doe := Doe{'asazwa-genko'}

    mut arr := []Balance{}
    arr << jhon
    arr << doe

	//ranging
    for item in arr {
	println('bank: $item.bank_name balance: $item.balance()')
}
}

fn (j Jhon) balance() f64 {
	return 3344599876.00
}

fn (d Doe) balance() f64 {
	return 2226648765.00
}

