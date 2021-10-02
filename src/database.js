const mongoose = require('mongoose')

mongoose.connect('mongodb://mongo/mydatabase')
// se não funcionar tirar/add o db do mongo acima 
    .then(db => console.log('Db esta conectado a',db.connection.host))
    .catch(err => console.error(err));