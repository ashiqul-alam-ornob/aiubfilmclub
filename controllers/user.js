var express = require('express');
var userModel = require('./../models/user-model');
var router = express.Router();

router.get('*', function(req, res, next){

	if(req.cookies['userid'] != null){
		next();
	}else{
		res.redirect('/login');
	}
});

router.get('/userlist', function(req, res){

		userModel.getAll(function(results){
			if(req.cookies['userid'] != null){
				res.render('user/index', {user: results});
			}else{
				res.redirect('/login');
			}
		});
});


router.get('/adduser', function(req, res){
	res.render('user/adduser');
});

router.post('/adduser', function(req, res){

	var user = {
		userid: req.body.userid,
		//clubid: req.body.clubid,
		name: req.body.name,
		usertype: req.body.usertype,
		designation: req.body.designation,
		contactnumber: req.body.contactnumber,
		email: req.body.email,
		password: req.body.password
	};

	userModel.insert(user, function(status){
		if(status){
			res.redirect('/user/userlist');
		}else{
			res.redirect('/user/adduser');
		}
	});
});

router.get('/edit/:userid', function(req, res){

	userModel.getById(req.params.userid, function(results){
		res.render('user/edit', {user: results[0]});		
	});

});

router.post('/edit/:userid', function(req, res){
	
	var user = {
		userid: req.body.userid,
		//clubid: req.body.clubid,
		name: req.body.name,
		usertype: req.body.usertype,
		designation: req.body.designation,
		contactnumber: req.body.contactnumber,
		email: req.body.email,
		password: req.body.password,
		userid: req.params.userid
	};

	userModel.update(user, function(status){

		if(status){
			res.redirect('/user/userlist');
		}else{
			res.redirect('/user/adduser');
		}
	});
});

router.get('/details/:userid', function(req, res){

	userModel.getById(req.params.userid, function(result){
		console.log(result);
		res.render('user/details', {user: result});
	});
});

router.get('/delete/:userid', function(req, res){

	var user ={userid: req.params.userid}

	userModel.delete(user, function(status){
		res.redirect('/user/userlist');;		
	});

});

module.exports = router;
