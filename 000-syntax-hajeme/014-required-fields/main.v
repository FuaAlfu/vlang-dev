struct Hoo {
	a int [required]
	b f32 [required]
}

fn main() {
	/*
	Required fields
    we can mark a struct field with the [required] attribute,
	to tell Vlang that  field must be initialized
    when constructing that struct.
	*/

	//constructing :: instance
	h := Hoo{
		a: 300
		b: 3.00
	}
	println('a is: $h.a and , b is: $h.b')
	println('---')
	//----------------------------------------------

	/*This example will not compile,
   since the field (a and b) isn't explicitly initialized:
   */
  /* _ = Hoo{}
   println('_ = $_')
   println('---')
   */
}