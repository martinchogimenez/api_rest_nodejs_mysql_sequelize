const router = require('express').Router();

const {Genere} = require('../../database');
//show all generes
router.get('/', async (req, res) => {
    console.log(req.usuarioId);
    const generes = await Genere.findAll();
    res.json(generes);
});
router.post('/', async (req, res)=> {
    const genere = await Genere.create(req.body);
    res.json(genere);
});
router.put('/:genereId', async (req, res) => {
    await Genere.update(req.body, {
        where: {id: req.params.genereId}
    });
    res.json({ success: 'Se ha modificado'})
});
router.delete('/:genereId', async(req, res) => {
    await Genere.destroy({
        where: {id: req.params.genereId}
    });
    res.json({ success: 'Se ha borrado el género'});
})
module.exports = router;