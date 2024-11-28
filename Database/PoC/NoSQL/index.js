import { getFirestore, getDocs, setDoc, collection, doc } from "firebase/firestore";
import { initializeApp } from "firebase/app";
import express from "express";

// Configuration de Firebase
const firebaseConfig = {
  apiKey: process.env.FIREBASE_API_KEY,
  authDomain: process.env.FIREBASE_AUTHDOMAIN,
  projectId: process.env.FIREBASE_PROJECTID,
  storageBucket: process.env.FIREBASE_STORAGEBUCKET,
  messagingSenderId: process.env.FIREBASE_MESSAGINGSENDERID,
  appId: process.env.FIREBASE_APPID
};

const firebaseapp = initializeApp(firebaseConfig);
const db = getFirestore(firebaseapp);

const app = express();
const port = 3000;

app.use(express.json());

app.get('/', (req, res) => {
  res.send('Hello World!');
});

app.post('/create/users', async (req, res) => {
  if (!req.query.name || !req.query.email) {
    res.status(400).send('Bad Request');
    return;
  }
  const user = {
    name: req.query.name,
    email: req.query.email
  };
  await setDoc(doc(db, 'users', user.email), user).then(() => {
    console.log('User created successfully');
  }).catch((error) => {
    console.error('Error creating user: ', error);
    res.status(500).send('Internal Server Error');
  });
  res.status(201).send('User created successfully');
});

app.get('/read/users', async (req, res) => {
  const usersSnapshot = await getDocs(collection(db, 'users'));
  const usersList = usersSnapshot.docs.map(doc => doc.data());
  res.json(usersList);
});

app.listen(port, () => {
  console.log(`Server is running on http://localhost:${port}`);
});