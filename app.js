const express = require('express');
const dotenv = require('dotenv');

// Load environment variables from .env file
dotenv.config();

const app = express();

// Use port from .env or fallback to 3000
const port = process.env.PORT;

app.get('/', (req, res) => {
  res.send('<h1>NODE Demo App</h1> <h4>Message: Success</h4> <p>Version 1.1</p>');
});

app.get('/products', (req, res) => {
  res.send([
    { productId: '101', price: 100 },
    { productId: '102', price: 150 }
  ]);
});

app.listen(port, () => {
  console.log(`Demo app is up and listening on port: ${port}`);
});
