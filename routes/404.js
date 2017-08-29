var express = require('express');
var router = express.Router();
var util = require('util')
var cfg = require('../setting/settings')
var config = require('../config/config')
var client=require('./redis_op.js')
var postgres_conn = require('./postgresql_op.js')
var mongo = require('mongodb')
var fun = require( '../config/fun.js')
router.get('/', function(req, res, next) {
    res.render('404')
});


module.exports = router;
