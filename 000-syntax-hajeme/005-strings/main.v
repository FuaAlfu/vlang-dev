fn main() {
	name := 'fua'
    println(name.len)
    println(name[0]) // indexing gives a byte f
    println(name[1..3]) // slicing gives a string 'ob'
    println('---')

   //concatenate strings
   alfu := name + ' alfu' 
   println(alfu) 
   println('---')

   //append to a string
   mut greet := 'yo '
   greet += 'everyone' 
   println(greet) 
}