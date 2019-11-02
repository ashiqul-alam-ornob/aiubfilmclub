var express = require('express');
var eventModel = require('./../models/event-model');
var router = express.Router();

router.get('*', function(req, res, next){

	if(req.cookies['userid'] != null || req.session.userid != null){
		next();
	}else{
		res.redirect('/home');
	}
});

router.get('/createevent', function(req, res){
	var user = {
		designation: req.session.designation
	};
	res.render('event/createevent', {user: user});
});

router.post('/createevent', function(req, res){
	// var fp; 
	// if(req.body.filepath == "" || req.body.filepath == undefined || req.body.filepath == null)
	// {
	// 	fp = null;
	// }
	// else{
	// 	fp = req.body.filepath;
	// }

	var event = {
		//eventid: req.body.eventid,
		eventname: req.body.eventname,
		eventdate: new Date().toISOString().slice(0,10),
		expiredate: req.body.expiredate,
		eventdescription: req.body.eventdescription,
		eventstatus: null
	};

	eventModel.insert(event, function(status)
	{
		if(status){
			res.redirect('/home');
		}else{
			res.redirect('/event/createevent');
		}
	});
});

module.exports = router;