export enum Genre {
  romance = 'romance',
  action = 'action',
  horror = 'horror',
  comedy = 'comedy',
  drama = 'drama',
  thriller = 'thriller',
  animation = 'animation',
  fantasy = 'fantasy',
  scifi = 'scifi',
}

export class Book {
  id: string;
  title: string;
  author: string;
  genre: Genre;
  year: number;
  pages: number;
}
