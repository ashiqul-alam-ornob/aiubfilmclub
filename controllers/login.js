var express = require('express');
var userModel = require('./../models/user-model');

var router = express.Router();

router.get('/', function(req, res){
	res.render('login/index');
});

router.post('/', function(req, res){
	
	var user = {
		userid: req.body.userid,
		password: req.body.password
	}

	userModel.validate(user, function(status){
		
		if(status){
			res.cookie('userid', req.body.userid);
			res.redirect('/home');	
		}else{
			res.send('invalid username/password');
		}
	});

});

module.exports = router;


