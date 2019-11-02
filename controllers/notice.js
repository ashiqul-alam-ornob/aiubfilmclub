var express = require('express');
var noticeModel = require('./../models/notice-model');
var router = express.Router();

router.get('*', function(req, res, next){

	if(req.cookies['userid'] != null || req.session.userid != null){
		next();
	}else{
		res.redirect('/home');
	}
});

router.get('/createnotice', function(req, res){
	var user = {
		designation: req.session.designation
	};
	res.render('notice/createnotice', {user: user});
});

router.post('/createnotice', function(req, res){

	// var d= typeof req.body.expiredate;
	// console.log(d);
	console.log(req.session.userid);
	console.log(req.body.title);
	console.log(req.body.description);
	console.log(req.body.expiredate);
	var notice = {
		creatorid: req.session.userid,
		title: req.body.title,
        description: req.body.description,
        noticedate: new Date().toISOString().slice(0,10),
        expiredate: req.body.expiredate,
		noticestatus: null
	};

	noticeModel.insert(notice, function(status){
		if(status){
			res.redirect('/home');
		}else{
			res.redirect('/notice/createnotice');
			
		}
	});
});

module.exports = router;