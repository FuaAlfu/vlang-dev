struct Memory {
	b  byte
	kb u32
	mb u64
}

union Data {
	Memory
	value u32
}

fn main() {
	/*
	 like structs, unions support embedding(inner types)..
	 Union member access must be performed in an unsafe block.
	 ---------------------------------------------------------
     Note that the embedded struct arguments are not necessarily stored in the order listed.
	*/

	m1 := Data{
	value: 0x008811FF
}

    m2 := Data{
	Memory: {
		mb: 512
	}
}

   size := sizeof(Data)
   unsafe {
	println('Size: ${size} m1: $m1.value m2: $m2.mb')
}
}