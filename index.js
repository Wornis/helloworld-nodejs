const express = require('express');
const app = express();

app.get('/', (req, res) => {
  const target = process.env.TARGET || 'World';
  res.send(`Salut BRother ${target}!`);
});

const port = process.env.PORT || 8080;
app.listen(port, () => {
  console.log('Hello world listening on port', port);
});
