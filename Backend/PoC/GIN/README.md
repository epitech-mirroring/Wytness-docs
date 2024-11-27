
# Gin Books API

A simple RESTful API built with the Gin framework in Go. This API manages a collection of books.

## Features
- Retrieve all books
- Retrieve a specific book by ID
- Add a new book

---

## Prerequisites
Before running the project, ensure you have the following installed:
- Fedora :
    ```bash
    sudo dnf install golang
    ```
- Debian :
    ```bash
    sudo apt install golang
    ```

---

## Installation

1. **Clone the repository**:
   ```bash
   git https://github.com/epitech-mirroring/Wytness-docs
   cd Wytness-docs
   ```

2. **Init the module if doesn't exist**:
    you can init the module by running the following command, if the module doesn't exist:
    - initialisation:
      ```bash
        go mod init PoC_GIN
      ```

3. **Install dependencies**:
   You can use either of the following commands to install dependencies:
    - Recommended:
      ```bash
      go mod tidy
      ```
    - Alternative:
      ```bash
      go get .
      ```

4. **Run the server**:
   ```bash
   go run .
   ```

   The server will start on `http://localhost:8080`.

---

## API Endpoints

### 1. **Get All Books**
**Request**:
   ```bash
   curl -X GET http://localhost:8080/books
   ```
**Response**:
   ```json
   [
     {
       "id": "1",
       "title": "The Lord of the Rings",
       "author": "J.R.R. Tolkien",
       "genre": "Fantasy",
       "year": 1954,
       "pages": 1178
     },
     {
       "id": "2",
       "title": "Harry Potter and the Philosopher's Stone",
       "author": "J.K. Rowling",
       "genre": "Fantasy",
       "year": 1997,
       "pages": 223
     }
   ]
   ```

---

### 2. **Get a Book by ID**
**Request**:
   ```bash
   curl -X GET http://localhost:8080/books/{id}
   ```
Replace `{id}` with the book's ID.

**Example**:
   ```bash
   curl -X GET http://localhost:8080/books/1
   ```
**Response**:
   ```json
   {
     "id": "1",
     "title": "The Lord of the Rings",
     "author": "J.R.R. Tolkien",
     "genre": "Fantasy",
     "year": 1954,
     "pages": 1178
   }
   ```

---

### 3. **Add a New Book**
**Request**:
   ```bash
   curl -X POST http://localhost:8080/books \
   -H "Content-Type: application/json" \
   -d '{
     "id": "6",
     "title": "Dune",
     "author": "Frank Herbert",
     "genre": "SciFi",
     "year": 1965,
     "pages": 412
   }'
   ```
**Response**:
   ```json
   {
     "id": "6",
     "title": "Dune",
     "author": "Frank Herbert",
     "genre": "SciFi",
     "year": 1965,
     "pages": 412
   }
   ```

---

## Folder Structure
```plaintext
.
├── main.go         # Entry point of the application
├── dataDB.go       # Contains a database like structure to store books
├── dataStruct.go   # Contains data structures
├── go.mod          # Go module file
├── go.sum          # Dependencies checksum file
└── README.md       # Project documentation
```

---

## possible Improvements
- Add database integration
- Implement user authentication

---
