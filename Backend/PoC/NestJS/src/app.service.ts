import { Injectable, NestMiddleware } from '@nestjs/common';
import { Request, Response, NextFunction } from 'express';
import { Book, Genre } from './models';
import {v4 as uuidv4} from 'uuid';

let db: Book[] = [
  {
    id: "aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa",
    title: 'The Hobbit',
    author: 'J.R.R. Tolkien',
    genre: Genre.fantasy,
    year: 1937,
    pages: 310,
  },
  {
    id: uuidv4(),
    title: 'The Lord of the Rings',
    author: 'J.R.R. Tolkien',
    genre: Genre.fantasy,
    year: 1954,
    pages: 1178,
  },
  {
    id: uuidv4(),
    title: 'The Catcher in the Rye',
    author: 'J.D. Salinger',
    genre: Genre.drama,
    year: 1951,
    pages: 277,
  }];

@Injectable()
export class AppService {
  getHello(): string {
    return 'Hello World!';
  }
}

@Injectable()
export class BookService {
  getBooks(): Book[] {
    return db;
  }

  getBook(id: string): Book {
    console.log(id);
    return db.find(book => book.id === id);
  }

  addBook(book: Book): Book {
    book.id = uuidv4();
    db.push(book);
    return book;
  }
}

@Injectable()
export class TimeMiddleware implements NestMiddleware {
  async use(req: Request, res: Response, next: NextFunction) {
    const start = performance.now()
    await next();
    const end = performance.now()
    let time = (end - start) / 1000;
    res.setHeader('x-process-time', String(time));
  }
}
