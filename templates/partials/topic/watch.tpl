<!-- IF config.loggedIn -->
<button component="topic/follow" class="btn btn-info <!-- IF isFollowing -->hidden<!-- ENDIF isFollowing -->" title data-original-title="[[topic:watch]]">
	<span class="visible-sm-inline visible-md-inline visible-lg-inline"></span> <i class="fa fa-eye"></i>
</button>

<button component="topic/unfollow" class="btn btn-warning <!-- IF !isFollowing -->hidden<!-- ENDIF !isFollowing -->" title data-original-title="[[topic:unwatch]]">
	<span class="visible-sm-inline visible-md-inline visible-lg-inline"></span> <i class="fa fa-eye-slash"></i>
</button>
<!-- ENDIF config.loggedIn -->