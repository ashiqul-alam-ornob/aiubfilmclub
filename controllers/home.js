var express = require('express');
var userModel = require('./../models/user-model');
var router = express.Router();

router.get('/', function(req, res){
	if(req.cookies['userid'] == null || req.session.userid == null){
		res.render('home/index', {user: null});
	}else{
		var uid;
		if(req.cookies['userid']!=null)
		{
			uid = req.cookies['userid'];
		}
		else
		{
			uid = req.session.userid;
		}

		userModel.getById(uid, function(result){
			if(req.session.userid == null)
			{
				req.session.userid = result[0].userid;
				req.session.usertype = result[0].usertype;
				req.session.designation = result[0].designation; 
			}
			res.render('home/index', {user: result[0]});
		});
	}
});






module.exports = router;


