const express = require('express');
const app = express();

app.get('/healthy', (req, res) => res.sendStatus(200));

app.get('/', (req, res) => {
  const target = process.env.TARGET || 'World';
  res.send(`Salut LEvher ${target}!`);
});

const port = process.env.PORT || 8080;
app.listen(port, () => {
  console.log('Hello world listening on port', port);
});
