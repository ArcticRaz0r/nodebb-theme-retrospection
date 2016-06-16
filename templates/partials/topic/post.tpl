<div class="post clearfix row-eq-height">
	<div class="post-user-sidebar text-center col-xs-12 col-md-2 panel panel-default">
		<div class="panel-body clearfix">
			<div class="icon">
				<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->">
					<!-- IF posts.user.picture -->
					<img component="user/picture" data-uid="{posts.user.uid}" src="{posts.user.picture}" itemprop="image"/>
					<i component="user/status" class="fa fa-circle status {posts.user.status}" title="[[global:{posts.user.status}]]"></i> 
					<!-- ELSE -->
					<div component="user/picture" data-uid="{posts.user.uid}" class="user-icon" style="background-color: {posts.user.icon:bgColor};">{posts.user.icon:text}</div>
					<!-- ENDIF posts.user.picture -->
				</a>
			</div>

			<small>
				<!-- IMPORT partials/topic/badge.tpl -->

				<strong>
					<a href="<!-- IF posts.user.userslug -->{config.relative_path}/user/{posts.user.userslug}<!-- ELSE -->#<!-- ENDIF posts.user.userslug -->" itemprop="author" data-username="{posts.user.username}" data-uid="{posts.user.uid}">{posts.user.username}</a>
				</strong>

				<!-- IF posts.user.banned -->
				<span class="label label-danger">[[user:banned]]</span>
				<!-- ENDIF posts.user.banned -->

				<div class="hidden-xs hidden-sm text-left">
					<br/>
					[[global:posts]]: {posts.user.postcount}<br/>
					[[global:reputation]]: {posts.user.reputation}<br/>
				</div>

				<div class="visible-xs-inline-block visible-sm-inline-block visible-md-inline-block visible-lg-inline-block">

					<small data-editor="{posts.editor.userslug}" component="post/editor" class="hidden">[[global:last_edited_by_ago, <strong>{posts.editor.username}</strong>, <span class="timeago" title="{posts.relativeEditTime}"></span>]]</small>


					<!-- IF posts.toPid -->
					<button component="post/parent" class="btn btn-xs btn-default hidden-xs" data-topid="{posts.toPid}"><i class="fa fa-reply"></i> @{posts.parent.username}</button>
					<!-- ENDIF posts.toPid -->

					<span>
						<!-- IF posts.user.custom_profile_info.length -->
						&#124;
						<!-- BEGIN custom_profile_info -->
						{posts.user.custom_profile_info.content}
						<!-- END custom_profile_info -->
						<!-- ENDIF posts.user.custom_profile_info.length -->
					</span>
				</div>
				<span class="bookmarked"><i class="fa fa-bookmark-o"></i></span>

			</small>
		</div>
	</div>
	<div class="post-body col-xs-12 col-md-10">
		<div class="content" component="post/content" itemprop="text">
			{posts.content}
		</div>

		<div class="signature">
			<!-- IF posts.user.signature -->
			<div component="post/signature" data-uid="{posts.user.uid}" class="post-signature">{posts.user.signature}</div>
			<!-- ENDIF posts.user.signature -->

			<small class="tools">
				<span class="post-tools">
					<a class="permalink" href="{config.relative_path}/topic/{slug}/{function.getBookmarkFromIndex}"><span class="timeago" title="{posts.relativeTime}"></span></a>
					<a component="post/quote" href="#" class="no-select <!-- IF !privileges.topics:reply -->hidden<!-- ENDIF !privileges.topics:reply -->">[[topic:quote]]</a>
				</span>

				<!-- IF !reputation:disabled -->
				<span class="votes">
					<a component="post/upvote" href="#" class="<!-- IF posts.upvoted -->upvoted<!-- ENDIF posts.upvoted -->">
						<i class="fa fa-chevron-up"></i>
					</a>

					<span component="post/vote-count" data-votes="{posts.votes}">{posts.votes}</span>

					<!-- IF !downvote:disabled -->
					<a component="post/downvote" href="#" class="<!-- IF posts.downvoted -->downvoted<!-- ENDIF posts.downvoted -->">
						<i class="fa fa-chevron-down"></i>
					</a>
					<!-- ENDIF !downvote:disabled -->
				</span>
				<!-- ENDIF !reputation:disabled -->

				<!-- IMPORT partials/topic/post-menu.tpl -->
			</small>
		</div>
	</div>
</div>

