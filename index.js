const express = require('express');
const app = express();
const port = 3000;

app.get('/', (req, res) => {
    res.send('Hello World!');
    });

app.listen(port, () => {
    console.log(`Servidor escuchadon en el puerto ${port}`);
});

app.get('hello', (req, res) => {
    res.send('Hello!');
});

//Levantar el servidor
//node index.js

//Crear dockerfile