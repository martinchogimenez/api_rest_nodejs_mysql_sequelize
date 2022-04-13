module.exports = (sequelize, type) => {
    return sequelize.define('movie',{
        id: {
            type: type.INTEGER,
            primaryKey: true,    
            autoIncrement: true
        },
        image: type.BLOB,        
        title: type.STRING,
        date_of_creation: type.DATE,
        calification: type.INTEGER,
        genere_id: type.INTEGER
    })
        movie.belongsTo(genere, {foreignKey: 'id'}); // Adds id to movie
        movie.belongsToMany(characters, { through: charMovie });
}