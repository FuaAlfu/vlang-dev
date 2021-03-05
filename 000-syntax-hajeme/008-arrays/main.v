fn main(){
	mut nums := [1, 2, 3]
    println(nums) // "[1, 2, 3]"
    println(nums[1]) // "2"
    nums[1] = 5
    println(nums) // "[1, 5, 3]"
    println(nums.len) // "3"
    nums = [] // The array is now empty
    println(nums.len) // "0"

    // Declare an empty array :: zero value?
    users := []int{}
	println('---')

    // append array
	mut another_nums := [1, 2, 3,4,5]
    another_nums << 6 //append 6
    println(another_nums) 
    another_nums << [7, 8, 9, 10]
    println(another_nums) 

	//strings with arrays
    mut names := ['fua']
    names << 'alfu'
	println(names)
    println(names.len) // "2"
    println('smokey' in names) // "false"
     /*
	 names << 99
	 This will not compile. `names` is an array of strings.
	 */
}