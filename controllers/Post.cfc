component {
	
	function save(rc){
	
	var newPost = EntityNew("Post");
		newPost.setTitle(rc.posttitle);
		newPost.setContent(rc.content);
		newPost.setEntryDate(Now());
		EntitySave(newPost);
	
	}
}