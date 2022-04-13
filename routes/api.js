const router = require('express').Router();

const middlewares = require('./middlewares');
const apiFilmsRouter = require('./api/characters');
const apiUsersRouter = require('./api/users')
const apiMoviesRouter = require('./api/movies');
const apiGeneresRouter = require('./api/generes');

router.use('/characters', middlewares.checkToken, apiFilmsRouter);
router.use('/', apiUsersRouter);
router.use('/generes', middlewares.checkToken, apiGeneresRouter);
router.use('/movies', middlewares.checkToken, apiMoviesRouter);

module.exports = router;