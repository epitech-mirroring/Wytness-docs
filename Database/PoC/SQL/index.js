import express from "express";
import { PrismaClient } from '@prisma/client'

const app = express();
const port = 3000;
const prisma = new PrismaClient()

app.use(express.json());

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.post('/create/users', async (req, res) => {
  if (!req.query.name || !req.query.email) {
    res.status(400).send('Bad Request');
    return;
  }
  await prisma.user.create({
    data: {
      name: req.query.name,
      email: req.query.email
    }
  });
  res.status(201).send('User created successfully');
});

app.get('/read/users', async (req, res) => {
  const users = await prisma.user.findMany();
  res.json(users);
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});