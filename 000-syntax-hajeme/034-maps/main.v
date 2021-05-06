fn main(){
	//key : value
	m := map{
   'a' : 'apple'
   'b' : 'banana'
}

value1 := m['b'] or {
    println('not found')
return
}
println(value1)

	m2 := map{
   'alpha' : 222
   'beta' : 444
}

value2 := m2['alpha'] or {
    println('not found')
return
}
println(value2)

empty_val2 := m['golden']
println(empty_val2)
}