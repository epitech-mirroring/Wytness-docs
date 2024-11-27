import { Module, NestModule, MiddlewareConsumer, RequestMethod } from '@nestjs/common';
import { AppController, BookController } from './app.controller';
import { AppService, BookService, TimeMiddleware } from './app.service';

@Module({
  imports: [],
  controllers: [AppController, BookController],
  providers: [AppService, BookService],
})
export class AppModule implements NestModule {
  async configure(consumer: MiddlewareConsumer) {
    consumer
    .apply(TimeMiddleware)
    .forRoutes(BookController);
  }
}
