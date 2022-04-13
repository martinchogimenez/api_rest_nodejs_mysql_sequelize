module.exports = (sequelize, type) => {
    return sequelize.define('genere',{
        id: {
            type: type.INTEGER,
            primaryKey: true,    
            autoIncrement: true
        },
        name: type.STRING,
        image: type.BLOB,    
    })
}
