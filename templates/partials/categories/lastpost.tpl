<div class="card" style="border-color: {../bgColor}">
	<!-- BEGIN posts -->
	<!-- IF @first -->
	<div component="category/posts">
		<p>
			
			<a class="permalink" href="{config.relative_path}/topic/{../topic.slug}<!-- IF ../index -->/{../index}<!-- ENDIF ../index -->">
				{../topic.title}
			</a><br/>
			<a href="{config.relative_path}/user/{../user.userslug}">
				<!-- IF ../user.picture -->
				<img class="user-img" alt="{../user.username}" src="{../user.picture}" title="{../user.username}"/>
				<!-- ELSE -->
				<span class="user-icon user-img" title="{../user.username}" style="background-color: {../user.icon:bgColor};">{../user.icon:text}</span>
				<!-- ENDIF ../user.picture -->

				{../user.username}
			</a>
			, <small class="timeago" title="{../timestamp}"></small>
		</p>
		
	</div>
	<!-- ENDIF @first -->
	<!-- END posts -->

	<!-- IF !../posts.length -->
	<div component="category/posts">
		<div class="post-content">
			[[category:no_new_posts]]
		</div>
	</div>
	<!-- ENDIF !../posts.length -->
</div>