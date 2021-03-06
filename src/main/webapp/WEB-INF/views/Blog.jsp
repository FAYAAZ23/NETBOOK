 <%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<div data-ng-controller="BlogController">

	<sec:authorize access="isAuthenticated()">
	
		<form role="form" data-ng-submit="submit()"
			data-ng-controller="BlogController">
			<h3 class=text-info align="center">Create Blog</h3>
			<div class="form-group">
				<input type="text" class="form-control input-sm"
					placeholder="Blog Id" data-ng-model="blogid"
					data-ng-show="blogid" data-ng-disabled="blogid">
			</div>
			<div class="form-group">
				<input type="text" class="form-control input-sm"
					placeholder="Blog Title" data-ng-model="blogName">
			</div>
			<div class="form-group">
				<label class=text-info for="formdata">Blog Description</label>
				<textarea draggable="false" style="resize: none" id="formdata"
					class="form-control " rows="13" data-ng-model="blogDesc"></textarea>
			</div>
			<div align="left">
				<button type="submit" class="btn btn-info">Save Blog</button>
			</div>
		</form>
	</sec:authorize>
	<br>
	<div data-ng-init="getAllBlogs()">
		<table class="table table-bordered table-hover">
			<thead>
				<tr>
					<!-- <th>Blog ID</th> -->
					<th class=text-info>Blog Name</th>
					<th class=text-info>Blog Description</th>
					<th class=text-info>Delete/Edit</th>
					<th class=text-info>View</th>
				</tr>
			</thead>
			<tbody>
				<tr data-ng-repeat="blog in blogs">
					<td width="15%">{{blog.blogName}}</td>
					<td width="70%">{{blog.blogDesc}}</td>
					<td width="10%">
						<div class="btn-group  btn-group-justified ">
							<sec:authorize access="isAuthenticated()">
								<div data-ng-if="accessBlog(blog.b_userid)">
									<a class="btn btn-xs btn-info"
										data-ng-click="deleteBlog(blog.bid)">Delete</a>/
									<a	class="btn btn-xs btn-info"
										data-ng-click="editBlog(blog.bid)">Edit</a>
								</div>
							</sec:authorize>
						</div>	
					</td>
					<td width="5%"><a href="blog/{{blog.bid}}" class="btn btn-xs btn-info">View</a></td>
				</tr>
			</tbody>
		</table>
	</div>
<input type="text" value="${sessionScope.userid}" style="margin-top: 75px" id="userid" hidden="true" />


	<script src="${pageContext.request.contextPath}/resources/js/AngularControllers/Blog.js"></script>
</div>
 