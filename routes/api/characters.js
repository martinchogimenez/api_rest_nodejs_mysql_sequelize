const router = require('express').Router();

const {Character} = require('../../database');
//show all characters
router.get('/', async (req, res) => {
    console.log(req.usuarioId);
    const characters = await Character.findAll();
    res.json(characters);
});
//create character
router.post('/', async (req, res)=> {
    const character = await Character.create(req.body);
    res.json(character);
});
//update character
router.put('/:characterId', async (req, res) => {
    await Character.update(req.body, {
        where: {id: req.params.characterId}
    });
    res.json({ success: 'Se ha modificado'})
});
//delete character
router.delete('/:characterId', async(req, res) => {
    await Character.destroy({
        where: {id: req.params.characterId}
    });
    res.json({ success: 'Se ha borrado el personaje'});
})
module.exports = router;