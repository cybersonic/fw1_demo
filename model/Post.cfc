<cfcomponent persistent="true" table="post">
    <cfproperty name="id"          ormtype="int" fieldtype="id" generator="native" />
	<cfproperty name="title"       ormtype="string" />
	<cfproperty name="entrydate"   ormtype="datetime" />
	<cfproperty name="content"       ormtype="string" />

</cfcomponent>