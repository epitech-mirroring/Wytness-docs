import { Controller, Get, Post, Body, Param } from '@nestjs/common';
import { AppService, BookService } from './app.service';
import { Book } from './models';

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) {}

  @Get()
  getHello(): string {
    return this.appService.getHello();
  }
}

@Controller('/books')
export class BookController {
  constructor(private readonly bookService: BookService) {}

  @Get()
  getBooks() {
    return this.bookService.getBooks();
  }

  @Get(':id')
  getBook(@Param("id") id: string) {
    return this.bookService.getBook(id);
  }

  @Post()
  async addBook(@Body() book: Book) {
    return this.bookService.addBook(book);
  }
}
