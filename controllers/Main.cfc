component {
	
	
	
	
	function default(rc){
		rc.posts = EntityLoad("Post", {}, "entrydate DESC");
	}
	
	
	/* other methods */
	/** order of call 
	
	function before(rc){}
	
	//e.g. startDefault()
	function start<action>() {}
	
	//e.g. default
	function <action>(){}
	
	//services/section.cfc : item()
	//(any additional service calls that were added via the service() API call)
	
	//e.g endDefault() 
	function end<action>(){}
	
	function after(){}
	**/
	
	
	
	
}