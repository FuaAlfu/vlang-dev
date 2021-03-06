fn main() {
	/*
	multidimensional arrays
	sorting arrays
	array slices
	*/ 

     //multidimensional mrrays
    //arrays can have more than one dimension..
	//#2d array example:

    mut ma := [][]int{len: 5, init: []int{len: 10}}
    ma[0][1] = 4
    println(ma) 
	println('---')

    //#3d array example:
    mut a := [][][]int{len: 4, init: [][]int{len: 8, init: []int{len: 2}}}
    a[0][1][1] = 20
    println(a) 
	println('---')

	//sorting arrays
    //very simple and intuitive.. 
    mut numbers := [1, 3, 2]
    numbers.sort() // 1, 2, 3
	println(numbers)
    numbers.sort(a > b) // 3, 2, 1
	println(numbers)
	numbers.sort(a < b)
	println(numbers)
}