const Sequelize = require('sequelize');

const CharacterModel = require('./models/characters');
const UserModel = require('./models/users');
const GenereModel = require('./models/generes');
const MovieModel = require('./models/movies');


const sequelize= new Sequelize('alkemybd', 'root', '', {
    host: 'localhost',
    dialect: 'mysql',
})

const Character = CharacterModel(sequelize, Sequelize);
const User = UserModel(sequelize, Sequelize);
const Genere = GenereModel(sequelize, Sequelize);
const Movie = MovieModel(sequelize, Sequelize);

sequelize.sync({force: false})
    .then(() => {
        console.log('Tablas sincronizadas')
    })

    module.exports = {
        Character, 
        User,
        Genere,
        Movie   
    } 