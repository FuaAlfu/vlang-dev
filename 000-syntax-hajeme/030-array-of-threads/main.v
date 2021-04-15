import time

fn task(id int, duration int) {
	println('task $id begin')
	time.sleep(duration * time.millisecond)
	println('task $id end')
	println('---')
	println('done')
}

fn main(){
	/*
	If there is a large number of tasks,
	it might be easier to manage them using an array of threads.
	*/
	mut threads := []thread{}
	threads << go task(1, 500)
	threads << go task(2, 900)
	threads << go task(3, 100)
	threads << go task(4, 700)
	threads.wait()
}