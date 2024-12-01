const express = require('express')
const router = express.Router()

router.get('/login', (req, res) => {
    res.render('login')
    console.log('login')
})

router.post('/login', (req,res) => {
    const {login, password} = req.body;
    res.redirect('/home/homepage')
})

router.get('/register', (req, res) => {
    res.render('register')
    console.log('register')
})

router.post('/register', (req, res) => {
    res.redirect('login')
})

module.exports = router