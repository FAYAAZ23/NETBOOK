  <%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div data-ng-controller="ForumController">

	<sec:authorize access="isAuthenticated()">
		<form role="form" data-ng-submit="submit()"
			data-ng-controller="ForumController">
			<h3 class=text-info align="center">Create Forum</h3>
			<div class="form-group">
				<input type="text" class="form-control input-sm"
					placeholder="Forum Id" data-ng-model="forumid"
					data-ng-show="forumid" data-ng-disabled="forumid">
			</div>
			<div class="form-group">
				<input type="text" class="form-control input-sm"
					placeholder="Forum Title" data-ng-model="forumName">
			</div>
			<div class="form-group">
				<label class=text-info for="formdata">Forum Description</label>
				<textarea draggable="false" style="resize: none" id="formdata"
					class="form-control " rows="13" data-ng-model="forumDesc"></textarea>
			</div>
			<div align="right">
				<button type="submit" class="btn btn-info">Save Forum</button>
			</div>
		</form>
	</sec:authorize>
	<br>
	<div data-ng-init="getAllForums()">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<th class=text-info>Forum ID</th>
					<th class=text-info>Forum Name</th>
					<th class=text-info>Forum Description</th>
					<sec:authorize access="isAuthenticated()">   
						<th class=text-info>Delete Forum</th>
						<th class=text-info>Edit Forum</th>
						<th class=text-info>View</th>
					</sec:authorize>
				</tr>
			</thead>
			<tbody>
				<tr data-ng-repeat="forum in forums">
					<td>{{forum.fid}}</td>
					<td>{{forum.forumName}}</td>
					<td>{{forum.forumDesc}}</td>
					<sec:authorize access="isAuthenticated()">
						<div data-ng-if="accessForum(forum.f_userid)">
						<td><button data-ng-click="deleteForum(forum.fid)"
								class="btn btn-info  btn-block btn-info">Delete</button></td>
						<td><button data-ng-click="editForum(form.fid)"
								class="btn btn-info  btn-block btn-info">Edit</button></td>
								</div>
					</sec:authorize>
				
				<td width="5%"><a href="forum/{{forum.fid}}" class="btn btn-primary btn-info">View</a></td>
  				</tr>
			</tbody>
			
			
		</table>
	</div>
<input type="text" value="${sessionScope.userid}" style="margin-top: 75px" id="userid" hidden="true" />


	<script src="${pageContext.request.contextPath}/resources/js/AngularControllers/Forum.js"></script>
</div>
