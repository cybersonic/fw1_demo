<cfcomponent extends="org.corfield.framework" output="false">
	
		<cfscript>
		this.name = 'fw1-inv-frame';
		
		// Railo 3.1.nnn ORM
/*		
		this.ormenabled = TRUE;
		this.datasource = "cfoanz2010_derby_orm";
        this.ormsettings = {dbcreate="dropcreate", cfclocation="model", autorebuild="true",logSQL="false",dialect="Derby",useDBForMapping = false};
*/	
		variables.framework = {
			generateSES = false,
			SESOmitIndex = false,
			
//			usingSubsystems = true,
//			defaultSubsystem = 'home',
			siteWideLayoutSubsystem = 'common',
			
			//error = 'webpages' & ':' & defaultSection & '.error',
			
			unhandledExtensions = 'cfc,html,htm',
//		unhandledPaths = '/wp_yoghourt'
		}
	</cfscript>
	
	<!--- framework defaults (as struct literal):
	variables.framework = {
		// the name of the URL variable:
		action = 'action',
		// whether or not to use subsystems:
		usingSubsystems = false,
		// default subsystem name (if usingSubsystems == true):
		defaultSubsystem = 'home',
		// default section name:
		defaultSection = 'main',
		// default item name:
		defaultItem = 'default',
		// if using subsystems, the delimiter between the subsystem and the action:
		subsystemDelimiter = ':',
		// if using subsystems, the name of the subsystem containing the global layouts:
		siteWideLayoutSubsystem = 'common',
		// the default when no action is specified:
		home = defaultSubsystem & ':' & defaultSection & '.' & defaultItem,
		-- or --
		home = defaultSection & '.' & defaultItem,
		// the default error action when an exception is thrown:
		error = defaultSubsystem & ':' & defaultSection & '.error',
		-- or --
		error = defaultSection & '.error',
		// the URL variable to reload the controller/service cache:
		reload = 'reload',
		// the value of the reload variable that authorizes the reload:
		password = 'true',
		// debugging flag to force reload of cache on each request:
		reloadApplicationOnEveryRequest = false,
		// whether to force generation of SES URLs:
		generateSES = false,
		// whether to omit /index.cfm in SES URLs:
		SESOmitIndex = false,
		// location used to find layouts / views:
		base = getDirectoryFromPath( CGI.SCRIPT_NAME ),
		// either CGI.SCRIPT_NAME or a specified base URL path:
		baseURL = 'useCgiScriptName',
		// location used to find controllers / services:
		cfcbase = essentially base with / replaced by .
		// whether FW/1 implicit service call should be suppressed:
		suppressImplicitService = false,
		// list of file extensions that FW/1 should not handle:
		unhandledExtensions = 'cfc',
		// list of (partial) paths that FW/1 should not handle:
		unhandledPaths = '/flex2gateway',
		// flash scope magic key and how many concurrent requests are supported:
		preserveKeyURLKey = 'fw1pk',
		maxNumContextsPreserved = 10,
		// set this to true to cache the results of fileExists for performance:
		cacheFileExists = false,
		// change this if you need multiple FW/1 applications in a single CFML application:
		applicationKey = 'org.corfield.framework'
	};
	--->
	
	<cffunction name="setupRequest">
		<!--- use setupRequest to do initialization per request --->
	
		<cfset request.context.startTime = getTickCount() />

        <cfparam name="SESSION.isLoggedIn" default="false" >
	</cffunction>
		

    <cffunction name="setupApplication">
        <!--- use setupRequest to do initialization per request --->
<!---
        <cfset this.ormSettings.dbCreate = "dropcreate" />
        <cfset ormReload() />
<!--- use path funtion here --->    
       <cfdirectory action="list" name="local.qryModel" directory="#ExpandPath('/model')#" />
        <cfloop query="local.qryModel">
            <cftry>
                <cfinvoke component="model.#ListFirst(local.qryModel.name, '.')#" method="loadData">
                <cfcatch><!--- go method? ---></cfcatch>
            </cftry>
        </cfloop>
        
        <cfset category1 = entityNew('category') />
        <cfset category1.setTitle('Railo') />
        <cfset category1.setDescription('Railo Technologies') />
        <cfset entitySave(category1) />
        
        <cfset category2 = entityNew('category') />
        <cfset category2.setTitle('ColdFusion') />
        <cfset category2.setDescription('Adobe ColdFusion') />
        <cfset entitySave(category2) />
        
        <cfset category3 = entityNew('category') />
        <cfset category3.setTitle('CFOANZ') />
        <cfset category3.setDescription('cf.Objective(anz)') />
        <cfset entitySave(category3) />
        
        <cfset blogger = entityNew('blogger') />
        <cfset blogger.setName('AJ Mercer') />
        <cfset blogger.setEmail('andrew@webonix.net') />
        <cfset blogger.setUsername('ajm') />
        <cfset blogger.setPassword('password') />
        <cfset entitySave(blogger) />
        
        <cfset post = entityNew('post') />
        <cfset post.setTitle('My first blog post') />
        <cfset post.setEntrydate(CreateDateTime(2010,01,01,12,10,08)) />
        <cfset post.setEntry('This is my <strong>first</strong> blog post :-)') />
        <cfset post.addBlogger(blogger) />
        <cfset post.addCategory(category1) />
        <cfset post.addCategory(category3) />
        <cfset entitySave(post) />
        
        <cfset post = entityNew('post') />
        <cfset post.setTitle('I am speaking at CFOANZ 2010') />
        <cfset post.setEntrydate(CreateDateTime(2010,01,02,10,08,00)) />
        <cfset post.setEntry('And you are at that session ;-)') />
        <cfset post.addBlogger(blogger) />
        <cfset post.addCategory(category1) />
        <cfset post.addCategory(category2) />
        <cfset post.addCategory(category3) />
        <cfset entitySave(post) />

        <cfset post = entityNew('post') />
        <cfset post.setTitle('ORM') />
        <cfset post.setEntrydate(Now()) />
        <cfset post.setEntry('This application is using ORM FTW!') />
        <cfset post.addBlogger(blogger) />
        <cfset post.addCategory(category1) />
        <cfset post.addCategory(category2) />
        <cfset entitySave(post) />

--->
    </cffunction>
<!--- 
	<cffunction name="onMissingView">
		<cfargument name="rc" type="struct" required="true" />
		
		<cfset var out = 'replace with real call' />
		
		<!--- <cfset controller('main.default') /> --->
		
		<cfsavecontent variable="out">
			<cfoutput>
			<strong>Item: </strong> #getItem(rc.action)#<br />
			<strong>Section: </strong> #getSection(rc.action)#<br />
			<strong>path_info: </strong> #cgi.path_info#<br />
			</cfoutput>
			
			<cfdump var="#cgi#" label="cgi.path_info #cgi.path_info#" expand="false" />
			<cfdump var="#this#" label="this" expand="false" />
			<cfdump var="#rc#" label="rc" expand="false" />
			<cfdump var="#application#" label="application" expand="false" />
		
		</cfsavecontent>
		
		<cfreturn out />
	</cffunction>
--->

</cfcomponent>