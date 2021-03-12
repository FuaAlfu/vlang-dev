struct Date {
	d int
	m int
	y int
}

pub fn (d Date) str() string {
	return '{Date: $d.d, $d.m, $d.y}'
}

fn main() {
	//constructing
	year := Date{
	d: 29
	m: 2
	y: 2020
}
println(year)
println('day: $year.d')
println('---')
}