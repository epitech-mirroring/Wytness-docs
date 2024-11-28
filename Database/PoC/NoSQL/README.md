# PoC NoSQL (Firebase)

## Description
This is a PoC of Firebase, a NoSQL database that helps you build, improve, and grow your app.

## Requirements
- Firebase account
- Node.js
- npm

## Installation
```bash
npm install
```

Create a .env file with the following content:
```env
FIREBASE_APIKEY=your_api_key
FIREBASE_AUTHDOMAIN=your_auth_domain
FIREBASE_PROJECTID=your_project_id
FIREBASE_STORAGEBUCKET=your_storage_bucket
FIREBASE_MESSAGINGSENDERID=your_messaging_sender_id
FIREBASE_APPID=your_app_id
```

## Usage
```bash
node --env-file=.env ./index.js
```
