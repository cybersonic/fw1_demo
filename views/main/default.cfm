<h2>Posts</h2>
<cfoutput>
	<cfloop array="#rc.posts#" index="post">
		
 	<div class="post" id="post-20"> 
		<div class="calendar"> 
			<p class="month">#DateFormat(post.getEntryDate(), "mmm")#</p> 
			<p class="date">#DateFormat(post.getEntryDate(), "dd")#</p> 
		</div>
		<h1><a href="index.cfm?action=post.view&postid=#post.getID()#" rel="bookmark" title="#post.getTitle()#">#post.getTitle()#</a></h1> 
		
		#post.getContent()#
	</div>
	</cfloop>
</cfoutput>	
	
<!---
	

	                <div class="post" id="post-20"> 

	                    <h1><a href="/wp_yoghourt/?p=20" rel="bookmark" title="wp_yoghourt v2.0 &ndash; new version release">wp_yoghourt v2.0 – new version release</a></h1> 
	                    <p class="author">By jeeremie </p> 

				            <p>I have changed a few things in this new Yoghourt WordPress theme release. It now includes Avatars and tags. Besides, I have fixed a few minor bugs that some of you reportedand I have improved the header which – I must say – sucked! And, most important, it works in WordPress 2.6+. </p> 
	<h2>Download it</h2> 
	<p><a href="http://web-kreation.com/?dl_id=5" title="Download">Download wp_yoghourt v2.0</a></p> 
	<h2>License</h2> 
	<p>Since I want to submit this theme to WordPress theme directory, I had to change the Common Creative License 2.5 for a <a href="http://www.opensource.org/licenses/gpl-license.php" target="_blank">GPL license</a>. </p> 
	<p>Visit <a href="http://web-kreation.com/index.php/freebies/" title="freebies">my site</a> for more free WordPress themes.</p> 

	                    <div class="links"> 
	                        <div class="comment"> 
	                            <a href="/wp_yoghourt/?p=20#comments" title="Comment on wp_yoghourt v2.0 &ndash; new version release">69 Comments</a>                        </div> 
	                        <div class="feed"> 
	                            <a href="/wp_yoghourt/?feed=rss2">RSS</a> 
	                        </div> 
	                        <div class="cat"> 
	                            Filed under: <a href="/wp_yoghourt/?cat=5" title="View all posts in Versions" rel="category">Versions</a>, <a href="/wp_yoghourt/?cat=6" title="View all posts in Wordpress" rel="category">Wordpress</a>, <a href="categories.htm" title="View all posts in news" rel="category">news</a>                        </div> 
							<div class="tags">Tags: <a href="/wp_yoghourt/?tag=avatars" rel="tag">avatars</a>, <a href="/wp_yoghourt/?tag=release" rel="tag">release</a>, <a href="/wp_yoghourt/?tag=tags" rel="tag">tags</a>, <a href="/wp_yoghourt/?tag=version" rel="tag">version</a>, <a href="/wp_yoghourt/?tag=wordpress" rel="tag">Wordpress</a>.</div>                     </div> <!-- /links --> 


		            </div> <!-- /post -->
--->		
