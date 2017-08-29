var express = require('express');
var router = express.Router();
var util = require('util')
var cfg = require('../setting/settings')
var config = require('../config/config')
var mongo = require('mongodb')
var fun = require( '../config/fun.js')
var formidable = require('formidable')
var fs = require('fs')
var sd = require('silly-datetime');
/*主界面*/
router.get('/', function(req, res, next) {
	var host = config.mongo.host
	var port = config.mongo.port
	var server=new mongo.Server(host,port,{auto_reconnect:true})
	var db=new mongo.Db(config.mongo.dbname,server,{safe:true});
	db.open(function (_err,db)  {
		db.collection(config.mongo.table, function (err,collection)
			{
				var exclude=new Object()
				for( var j = 0 ; j < config.exclude.length ; j++ )
				{
					var key = config.exclude[ j ]
					exclude[key]=0
				}		
				collection.find({},exclude ).toArray(function(err,docs)
					{
						var action_columns = new Array()	
						for( var i in docs[0] )
						{
							var obj =new Object()
							obj.title = i 
							action_columns.push( obj )							
						}
						
						var action_dataset =  new Array() 
						for( var i = 0 ; i < docs.length ;i++ )
						{
							b =  fun.json_2_array( docs[i] )
							action_dataset.push(b )
						}
						res.render( 'file_list' , 
						{user_dataset:JSON.stringify(action_dataset)  , 
						user_column:JSON.stringify( action_columns )                      
							} 
						)
					}
				)
			}
		)
	})


	
});

router.get('/u', function(req, res, next) {
        res.render('file_upload')
   }
)

router.post('/u', function(req, res, next) {
		res.writeHead(200, {"Content-Type": "application/json"});
        AVATAR_UPLOAD_FOLDER = '/resource/'
        var form = new formidable.IncomingForm();   //创建上传表单
        form.encoding = 'utf-8';		//设置编辑
        form.uploadDir = 'public' + AVATAR_UPLOAD_FOLDER;	 //设置上传目录
        form.keepExtensions = true;	 //保留后缀
        form.maxFieldsSize = 2 * 1024 * 1024;   //文件大小
        form.parse(req, function(err, fields, files) 
            {
                var title = fields.title 
                var desc = fields.desc
				var f=files.codecsv.path
				var file_srcname = files.codecsv.name			
				fs.exists(f , function(exists) {
					if( !exists )
					{
						res.end({"res":201})
						return 
					}
					var host = config.mongo.host
					var port = config.mongo.port
					var server=new mongo.Server(host,port,{auto_reconnect:true,connectTimeoutMS:500})
					var db=new mongo.Db( config.mongo.dbname ,server,{safe:true});
					db.open(
							function (_err,db) 
							{
								if(_err)
								{
									fs.unlinkSync(f);
									res.end(JSON.stringify( {"res":203} ));
									db.close()
									return 
								}
								db.collection(config.mongo.table , function(err , collection)
									{
										if(err)
										{
											fs.unlinkSync(f);
											res.end(JSON.stringify( {"res":203} ));
											db.close()
											return
										}
										var o = new Object( )
										o.title = title
										o.desc = desc 
										o.filename = file_srcname 
										o.encode_filename = f.replace(/public\//g,'')
										o.date = sd.format(new Date(), 'YYYY-MM-DD HH:mm:ss');
										collection.insert( o  ,function(err,result)
											{
												
												if(err)
												{
													//console.log("111111111111111111111")
													fs.unlinkSync(f);
													res.end(JSON.stringify( {"res":202} ));
													db.close()
													return
												}
												db.close()
												res.end(JSON.stringify( {"res":200} ));
											}
										)
										
									}							
								)
							}
						)//end open
				}
				)
			}
		)
   }
)

router.post('/delrow', function(req, res, next) {
	var ObjectId = mongo.ObjectID;
	var id=ObjectId( req.body._id)
	res.writeHead(200, {"Content-Type": "application/json"});
	
	var host = config.mongo.host
	var port = config.mongo.port
	var server=new mongo.Server(host,port,{auto_reconnect:true,connectTimeoutMS:500})
	var db=new mongo.Db( config.mongo.dbname ,server,{safe:true});
	db.open(
			function (_err,db) 
			{
				if(_err)
				{
					res.end(JSON.stringify( {"res":203} ));
					db.close()
					return 
				}
				db.collection(config.mongo.table , function(err , collection)
					{
						if(err)
						{
							res.end(JSON.stringify( {"res":203} ));
							db.close()
							return
						}
						var condtion=new Object( )
						condtion._id =  id 
						console.log( JSON.stringify(condtion ))
						collection.find( condtion,{_id:0 ,"encode_filename":1} ).toArray( function(err,docs)
							{
								if(err)
								{
									res.end(JSON.stringify( {"res":203} ));
									return 
								}
								var obj=docs[0]
								filename = "public/"+obj.encode_filename
								collection.remove(condtion , function(err , result ) {
									if(err)
									{
										res.end(JSON.stringify( {"res":203} ));
										return 
									}
									fs.unlinkSync(filename);
									res.end(JSON.stringify( {"res":200} ));
								}
								)
							}
							)
						
					}							
				)
			}
		)//end open
	res.end(JSON.stringify( {"res":200} ) )
	
})
module.exports = router;