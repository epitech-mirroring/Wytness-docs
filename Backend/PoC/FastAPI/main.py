from fastapi import FastAPI
from fastapi.requests import Request
from fastapi.middleware.cors import CORSMiddleware
from models import *
import time

app = FastAPI()

app.add_middleware(
    CORSMiddleware,
    allow_origins=["*"],
    allow_credentials=True,
    allow_methods=["*"],
    allow_headers=["*"],
)

db: List[Book] = [
    Book(id="aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa", title="The Great Gatsby", author="F. Scott Fitzgerald", genre=Genre.drama, year=1925, pages=218),
    Book(id=uuid4(), title="The Catcher in the Rye", author="J.D. Salinger", genre=Genre.drama, year=1951, pages=234),
    Book(id=uuid4(), title="To Kill a Mockingbird", author="Harper Lee", genre=Genre.drama, year=1960, pages=281)]

@app.get("/")
def read_root():
    return {"Hello": "World"}

@app.get("/books/{book_id}")
def read_book(book_id: UUID):
    for book in db:
        if book.id == book_id:
            return book
    return {"error": "Book not found"}

@app.get("/books")
def read_books():
    return db

@app.post("/books")
def create_book(book: Book):
    id = uuid4()
    book.id = id
    db.append(book)
    return book

@app.middleware("http")
async def add_process_time_header(request: Request, call_next):
    start_time = time.perf_counter()
    response = await call_next(request)
    process_time = time.perf_counter() - start_time
    response.headers["X-Process-Time"] = str(process_time)
    return response

