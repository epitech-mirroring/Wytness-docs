package main

type Genre string

const (
	Romance   Genre = "Romance"
	Action    Genre = "Action"
	Horror    Genre = "Horror"
	Comedy    Genre = "Comedy"
	Drama     Genre = "Drama"
	Thriller  Genre = "Thriller"
	Animation Genre = "Animation"
	Fantasy   Genre = "Fantasy"
	SciFi     Genre = "SciFi"
)

type Book struct {
	ID     string  `json:"id"`
	Title  string  `json:"title"`
	Author string  `json:"artist"`
	Genre  Genre   `json:"price"`
	Year   float64 `json:"year"`
	Pages  float64 `json:"pages"`
}
