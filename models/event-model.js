var db = require('./db');

module.exports={

	getById: function(eventid, callback){

		var sql = "select * from eventinfo where eventid=?";
		db.getResults(sql, [eventid], function(result){

			//console.log(result);
			if(result.length > 0 ){
				callback(result[0]);
			}else{
				callback([]);
			}
		});
	},
	// validate: function(user, callback){
	// 	var sql = "select * from userinfo where userid=? and password=?";

	// 	db.getResults(sql, [user.userid, user.password], function(result){

	// 		if(result.length > 0 ) {
	// 			callback(true);
	// 		}else{
	// 			callback(false);
	// 		}
	// 	});
	// },
	getAll : function(callback){
		var sql = "select * from eventinfo";

		db.getResults(sql, [], function(results){

			if(results.length > 0 ) {
				callback(results);
			}else{
				callback([]);
			}
		});
	},
	getAllApproved : function(event, callback){
		var sql = "select * from eventinfo where eventstatus = ?";

		db.getResults(sql, [event.eventstatus], function(results){

			console.log(results);

			if(results.length > 0 ) {
				callback(results);
			}else{
				callback([]);
			}
		});
	},
	insert : function(event, callback){
		var sql = "insert into eventinfo values('', ?, ?, ?, ?, ?)";
		db.execute(sql, [event.eventname, event.eventdate, event.expiredate, event.eventdescription, event.eventstatus], function(status){
			callback(status);
		});
	},
	postStatusUpdate: function(event, callback){
		var sql = "update eventinfo set eventstatus=? where eventid=?";		
		db.execute(sql, [event.eventstatus, event.eventid], function(status){
			callback(status);
			});
	},
	update : function(event, callback){
		var sql = "update eventinfo set eventname=?, eventdescription=?, where eventid=?";		
		db.execute(sql, [event.eventname, event.eventdescription, event.eventid], function(status){
			callback(status);
			});
	},
	delete : function(event, callback){
		var sql = "delete from eventinfo where eventid=?";
		db.execute(sql, [event.eventid],  function(status){
			callback(status);
		});
	}
}	


