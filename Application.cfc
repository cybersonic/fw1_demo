component extends="org.corfield.framework" {
	this.name = "fw1_blog";
	this.datasource = "fw1-db";

	this.ormenabled = true;
	this.ormsettings = {
		dbcreate="dropcreate", cfclocation="model", autorebuild="true"
	};
	
	
}