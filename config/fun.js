var crypto = require('crypto')
var node_uuid=require('node-uuid')
var obj={
    "md5":function(data){
		var md5 = crypto.createHash('md5');  
		md5.update(data);  
		var result = md5.digest('hex');  
		return result
	},
    "session":function()
    {  
        return node_uuid.v4().replace(/[-]/g , ""  ) 
    },
    "is_json":  function (obj){
        var isjson = typeof(obj) == "object" && Object.prototype.toString.call(obj).toLowerCase() == "[object object]" && !obj.length; 
        return isjson;
    } ,
    "queto":function ( str ,comma  )
    {
        if( comma)
        {
            return "'"+ str + "'," 
        }
        else
        {
            return "'"+ str + "'"
        }
        
    },
    "insert_session_sql":function ( u  ,session )
    {
        str = 'INSERT INTO public."session管理_connection"( ' 
        +'userid, session, ipaddr, uptime, crate_time) values ('
        +queto( u , true ) 
        +queto( session ,true )
        +queto( '0.0.0.0' ,true )
        +queto( '0' ,true )
        +queto( 'now()'  )
        +")"
        return str 
    },
    "json_2_array":function ( obj )
    {
        var a= new Array()
        for( var i  in obj )
        {
            a.push( obj[i] )
        }
        return a 
    },
    "contains":function ( obj , key )
    {
        var a = false 
        for( var i in obj)
        {
            if( i == key )
            {
                a = true 
                break 
            }
        }
        return a  
    }
}



module.exports=obj