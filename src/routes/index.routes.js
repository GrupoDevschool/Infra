const { Router } = require('express');
const router = Router()


router.get('/', (req, res) => {
    res.send('Da oi pro tio')
});

module.exports = router;