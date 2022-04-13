module.exports = (sequelize, type) => {
    return sequelize.define('characters', {
        id: {
            type: type.INTEGER,
            primaryKey: true,    
            autoIncrement: true
        },
        image: type.BLOB,
        name: type.STRING,
        age: type.INTEGER,
        weight: type.INTEGER,
        history: type.STRING
    })
        characters.belongsToMany(movie, { through: charMovie });
       
};