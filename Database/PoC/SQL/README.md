# PoC SQL (PostgreSQL)

## Description

This is a PoC of PostgreSQL, a powerful, open-source object-relational database system.
It was setup using an ORM called Prisma, which makes database access easy with type safety and auto-completion.

## Requirements
- Node.js
- npm
- PostgreSQL

## Installation
```bash
npm install
```

Create a .env file with the following content:
```env
DATABASE_URL=postgresql://user:password@localhost:5432/database
```

Having PostgreSQL installed, create a database with the name specified in the DATABASE_URL.

Run the following command to generate the Prisma client:
```bash
npx prisma migrate dev --name init
```

## Usage
```bash
node --env-file=.env ./index.js
```
