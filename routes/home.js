const express = require('express')
const router = express.Router()

router.get('/files', (req, res) => {
    res.render('files')
    console.log('files')
})

router.get('/find', (req, res) => {
    res.render('find')
    console.log('find')
})

router.get('/homepage', (req, res) => {
    res.render('homepage')
    console.log('homepage')
})

router.get('/settings', (req, res) => {
    res.render('settings')
    console.log('settings')
})

module.exports = router