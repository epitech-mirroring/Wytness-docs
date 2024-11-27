package main

import (
	"github.com/gin-gonic/gin"
	"net/http"
	"time"
)

func requestTimeLogger() gin.HandlerFunc {
	return func(c *gin.Context) {
		startTime := time.Now()
		duration := time.Since(startTime)
		c.Header("X-Response-Time", duration.String())
		c.Next()
	}
}

func entryPoint(c *gin.Context) {
	c.JSON(http.StatusOK, gin.H{
		"message": "Hello World",
	})
}

func getbooks(c *gin.Context) {
	c.IndentedJSON(http.StatusOK, books)
}

func getAlbumByID(c *gin.Context) {
	id := c.Param("id")

	for _, a := range books {
		if a.ID == id {
			c.IndentedJSON(http.StatusOK, a)
			return
		}
	}
	c.IndentedJSON(http.StatusNotFound, gin.H{"message": "album not found"})
}

func postbooks(c *gin.Context) {
	var newAlbum Book

	if err := c.BindJSON(&newAlbum); err != nil {
		return
	}

	books = append(books, newAlbum)
	c.IndentedJSON(http.StatusCreated, newAlbum)
}

func main() {
	router := gin.Default()
	router.Use(requestTimeLogger())

	router.GET("/books", getbooks)
	router.GET("/", entryPoint)
	router.POST("/books", postbooks)
	router.GET("/books/:id", getAlbumByID)

	router.Run("localhost:8080")
}
