const express = require('express');
const app = express();
const port = 8000;

app.get('/', (req, res) => res.send(`Hello World!<br><sub>Version ${process.env.VERSION}</sub>`));

app.listen(port, () => console.log(`App listening on port ${port}!`));
