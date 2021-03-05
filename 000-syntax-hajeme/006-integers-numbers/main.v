fn main() {

	number := 1_000_000 
    act_num := 0b0_11 
    float := 3_122.55 
    hexa := 0xF_F 
    oct := 0o17_3 
	println('number:$number ,actNum:$act_num ,float:$float ,\nhexa:$hexa ,oct:$oct')
	println('----')

	//casting different types of integer...
	a := i64(123)
    b := byte(42)
    c := i16(12345)
	f := 1.0
    another_f := f64(3.14)
	println('a:$a , b:$b , c:$c ,f:$f ,anotherF:$another_f')
}