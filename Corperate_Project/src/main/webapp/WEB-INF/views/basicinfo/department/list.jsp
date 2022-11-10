<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- top.jsp -->
<%@include file="../../common/top.jsp"%>

<div class="card">
	<div class="card-body">
		<div class="d-flex gap-1 mb-4 flex-wrap">
		
			<div class="d-flex gap-1 me-auto flex-wrap">
				<button id="addDepartmentBtn" class="btn btn-primary d-inline-flex align-items-center gap-1">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
						fill="currentColor" aria-hidden="true">
                    <path fill-rule="evenodd"
							d="M10 5a1 1 0 011 1v3h3a1 1 0 110 2h-3v3a1 1 0 11-2 0v-3H6a1 1 0 110-2h3V6a1 1 0 011-1z"
							clip-rule="evenodd" />
                  </svg>
					부서추가
				</button>
				<button class="btn btn-light d-inline-flex align-items-center gap-1">
					<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
						fill="currentColor" aria-hidden="true">
                    <path fill-rule="evenodd"
							d="M3 17a1 1 0 011-1h12a1 1 0 110 2H4a1 1 0 01-1-1zM6.293 6.707a1 1 0 010-1.414l3-3a1 1 0 011.414 0l3 3a1 1 0 01-1.414 1.414L11 5.414V13a1 1 0 11-2 0V5.414L7.707 6.707a1 1 0 01-1.414 0z"
							clip-rule="evenodd" />
                  </svg>
					Export
				</button>
				<div class="dropdown">
					<button
						class="btn btn-light d-inline-flex align-items-center gap-1 dropdown-toggle no-caret"
						type="button" data-bs-toggle="dropdown"
						data-bs-auto-close="outside" aria-expanded="false">
						<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"
							fill="currentColor" aria-hidden="true">
                      <path fill-rule="evenodd"
								d="M3 3a1 1 0 011-1h12a1 1 0 011 1v3a1 1 0 01-.293.707L12 11.414V15a1 1 0 01-.293.707l-2 2A1 1 0 018 17v-5.586L3.293 6.707A1 1 0 013 6V3z"
								clip-rule="evenodd" />
                    </svg>
						Filter
					</button>
					<form class="dropdown-menu p-3" style="min-width: 250px">
						<h6 class="dropdown-header p-0">Filter options</h6>
						<hr>
						<div class="vstack gap-3">
							<div>
								<label class="form-label">Role:</label> <select
									class="dselect form-select" data-dselect-clearable="true">
									<option value="">Choose role</option>
									<option value="administrator">Administrator</option>
									<option value="analyst">Analyst</option>
									<option value="developer">Developer</option>
									<option value="support">Support</option>
									<option value="trial">Trial</option>
								</select>
							</div>
							<div>
								<label class="form-label">Two Step Verification:</label> <select
									class="dselect form-select" data-dselect-clearable="true">
									<option value="">Select option</option>
									<option value="enabled">Enabled</option>
									<option value="disabled">Disabled</option>
								</select>
							</div>
							<button class="btn btn-primary" type="button">Apply</button>
						</div>
					</form>
				</div>
			</div>
			
			<form>
				<input type="text" class="form-control" placeholder="Search user">
			</form>
		</div>
		<div class="table-responsive my-1">
			<table class="table align-middle">
				<thead>
					<tr>
						<th scope="col">
							<div>
								<input class="form-check-input" type="checkbox" value="">
							</div>
						</th>
						<th scope="col">번호</th>
						<th scope="col">부서코드</th>
						<th scope="col">부서명</th>
						<th scope="col">Actions</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="vo" items="${voList}">
						<tr>
							<td>
								<div>
									<input class="form-check-input" type="checkbox" value="">
								</div>
							</td>
							
							<td>
								${vo.no}
							</td>
							
							<td>
								${vo.code}
							</td>
							
							<td>
								${vo.name}
							</td>
							
							<td>
								<div class="btn-group btn-group-sm" role="group">
									<button type="button" class="btn btn-light d-flex editDepartmentBtn">
										<svg width="17" height="17" xmlns="http://www.w3.org/2000/svg"
											fill="none" viewBox="0 0 24 24" stroke="currentColor"
											aria-hidden="true">
	                            <path stroke-linecap="round"
												stroke-linejoin="round" stroke-width="2"
												d="M15.232 5.232l3.536 3.536m-2.036-5.036a2.5 2.5 0 113.536 3.536L6.5 21.036H3v-3.572L16.732 3.732z" />
	                          </svg>
									</button>
									<button type="button" class="btn btn-light d-flex text-danger">
										<svg width="17" height="17" xmlns="http://www.w3.org/2000/svg"
											fill="none" viewBox="0 0 24 24" stroke="currentColor"
											aria-hidden="true">
	                            <path stroke-linecap="round"
												stroke-linejoin="round" stroke-width="2"
												d="M19 7l-.867 12.142A2 2 0 0116.138 21H7.862a2 2 0 01-1.995-1.858L5 7m5 4v6m4-6v6m1-10V4a1 1 0 00-1-1h-4a1 1 0 00-1 1v3M4 7h16" />
	                          </svg>
									</button>
								</div>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		<nav aria-label="Page navigation borderless example">
			<ul class="pagination pagination-borderless justify-content-end">
				<li class="page-item disabled"><a
					class="page-link d-flex align-items-center px-2" href="#"
					tabindex="-1" aria-disabled="true" aria-label="Previous"> <svg
							width="20" height="20" xmlns="http://www.w3.org/2000/svg"
							viewBox="0 0 20 20" fill="currentColor">
                      <path fill-rule="evenodd"
								d="M12.707 5.293a1 1 0 010 1.414L9.414 10l3.293 3.293a1 1 0 01-1.414 1.414l-4-4a1 1 0 010-1.414l4-4a1 1 0 011.414 0z"
								clip-rule="evenodd"></path>
                    </svg>
				</a></li>
				<li class="page-item active" aria-current="page"><a
					class="page-link" href="javascript:void(0)">1</a></li>
				<li class="page-item"><a class="page-link"
					href="javascript:void(0)">2</a></li>
				<li class="page-item"><a class="page-link"
					href="javascript:void(0)">3</a></li>
				<li class="page-item"><a
					class="page-link d-flex align-items-center px-2"
					href="javascript:void(0)" aria-label="Next"> <svg width="20"
							height="20" xmlns="http://www.w3.org/2000/svg"
							viewBox="0 0 20 20" fill="currentColor">
                      <path fill-rule="evenodd"
								d="M7.293 14.707a1 1 0 010-1.414L10.586 10 7.293 6.707a1 1 0 011.414-1.414l4 4a1 1 0 010 1.414l-4 4a1 1 0 01-1.414 0z"
								clip-rule="evenodd"></path>
                    </svg>
				</a></li>
			</ul>
		</nav>
	</div>
</div>

<!-- 부서등록/수정 Modal 코드-->
<!-- <form action="/basicinfo/department/new" method="post"> -->
<div class="modal fade" id="addUserModal" tabindex="-1">
	<div class="modal-dialog modal-dialog-scrollable">
		<div class="modal-content">
			<div class="modal-header border-0">
				<h5 id="modal-title">부서등록</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<div class="modal-body">
				<!-- form start -->
				<form class="needs-validation" novalidate id="modalForm" action="" method="post">
					<div class="mb-3">
						<label for="userFullname" class="form-label">부서명</label> 
						<input type="text" name="code" id="code" class="form-control" required autofocus>
						<div class="invalid-feedback">User full name is required.</div>
					</div>
					<div class="mb-3">
						<label for="userEmail" class="form-label">부서코드</label> 
						<input type="text" name="name" id="name" class="form-control" required>
						<div class="invalid-feedback">User email is required.</div>
					</div>
				</form>
				<!-- form end -->
			</div>
			<div class="modal-footer border-0">
				<button type="button" class="btn btn-light" data-bs-dismiss="modal">취소</button>
				<button type="button" id="modalRegisterBtn"class="btn btn-primary px-5">등록</button>
				<button type="button" id="modalUpdateBtn"class="btn btn-primary px-5">수정</button>
			</div>
		</div>
	</div>
</div>



<!-- bottom.jsp -->
<%@include file="../../common/bottom.jsp"%>

<script type="text/javascript">
$(function(){
	alert("/basicinfo/department/list.jsp");
	
	/* Modal이 등록 혹은 수정 상황에 맞게 만들어져 보여지도록 하는 코드 */
	$("#addDepartmentBtn").on("click", function(e){
		modal.find("#modal-title").text("부서등록");
		modal.find("button[id = 'modalUpdateBtn']").hide();	// Close 버튼을 제외한 나머지를 숨김
		modal.find("button[id != 'modalUpdateBtn']").show();
		$("#modalForm").attr("action", "/basicinfo/department/new");
		$(".modal").modal("show");
	});
	
	$(".editDepartmentBtn").on("click", function(e){
		modal.find("#modal-title").text("부서수정");
		modal.find("button[id = 'modalRegisterBtn']").hide();	// Close 버튼을 제외한 나머지를 숨김
		modal.find("button[id != 'modalRegisterBtn']").show();
		$(".modal").modal("show");
	});
	
	/* Modal에서 등록/수정 버튼이 눌렸을 때, Modal내의 form 태그에 action 속성값을 추가하고 submit 처리하는 코드 */
	var modalForm = $("#modalForm");
	
	$("#modalRegisterBtn").on("click", function(){
		modalForm.attr("action", "/basicinfo/department/add").submit();
	});
	
	$("#modalUpdateBtn").on("click", function(){
		modalForm.attr("action", "/basicinfo/department/modify").submit();
	});
	

	
	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	var modal = $(".modal");
	var modalInputCode = modal.find("input[name='code']");
	var modalInputName = modal.find("input[name='name']");
	
	
	/* 새로운 부서 등록 */
	var modalRegisterBtn = $("#modalRegisterBtn");
	
	modalRegisterBtn.on("click", function(e){
		
	//Modal 내의 input 태그 값들을 읽어와 객체 생성
	var obj = {
		reply : modalInputCode.val(),
		replyer : modalInputName.val(),
	};
	
		
		/* replyService.add(reply, function(result){
			alert(result);
			
			modal.find("input").val("");
			modal.modal("hide");
			
			//showList(1); // 댓글목록 갱신
			showList(-1);
		}); */
		
	});
});
</script>
