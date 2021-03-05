fn main() {
	/*
	All arrays can be easily printed with println(arr)
	 and converted to a string with s := arr.str().
	*/

	//Initializing array properties
	arr := []int{len: 5, init: -1}
	println(arr)
	println('---')

	//Setting the capacity improves performance of insertions,
	// as it reduces the number of reallocations needed
	mut numbers := []int{cap: 1000}
    println(numbers.len)
    for i in 0 .. 100 {
	numbers << i
  }
  println(numbers)
  println('---')

  //Copying the data from the array is done with .clone() method
  nums := [1, 2, 3]
  nums_copy := nums.clone()
  println('nums_copy: $nums_copy')
  println('---')

  //Arrays can be efficiently filtered and mapped with the
  // .filter() and .map() methods
  odd := [1, 2, 3, 4, 5, 6,7,8,9,10]
  even := odd.filter(it % 2 == 0)
  println(even) 

  // filter can accept anonymous functions
  even_fn := odd.filter(fn (x int) bool {
	return x % 2 == 0
})
  println('even_fn: $even_fn')

  //strings
  fua_alfu := ['fua', 'alfu']
  upper_case := fua_alfu.map(it.to_upper())
  println(upper_case) 

  // map can also accept anonymous functions
  upper_fn := fua_alfu.map(fn (w string) string {
	return w.to_upper()
})
  println(upper_fn) // ['HELLO', 'WORLD']
  println('---')
}