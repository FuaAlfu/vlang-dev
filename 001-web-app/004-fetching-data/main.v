//v page
module main

import vweb
import sqlite

struct App {
	vweb.Context
	mut:
	db sqlite.DB
}

struct Book {
	id    int
	title string
	text  string
}

fn main() {
	vweb.run<App>(8080)
}

pub fn (app &App) find_all_books() []Book {
	return sql app.db {
		select from Book
	}
}

pub fn (app &App) index() vweb.Result {
	books := app.find_all_books()
	return $vweb.html()
}

pub fn (mut app App) init_once() {
	db := sqlite.connect(':memory:') or { panic(err) }
	db.exec('create table `Book` (id integer primary key, title text default "", text text default "")')
	db.exec('insert into Book (title, text) values ("First post", "create a book..")')
	db.exec('insert into Book (title, text) values ("Second post.", "choose a book..")')
	db.exec('insert into Book (title, text) values ("third post.", "there is no books left..")')
	app.db = db
}
