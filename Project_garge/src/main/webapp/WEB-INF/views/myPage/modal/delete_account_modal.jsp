<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%-- 모달창 --%>
<div class="modal fade" id="delete_account_modal" tabindex="-1" aria-hidden="true">
	<div class="modal-dialog modal-sm" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel2">비밀번호를 입력하세요.</h5>
			</div>
			
			<form action="DeleteMember" name="DeleteMemberForm" method="post">
				<div class="modal-body">
					<div class="row">
						<div class="col mb-3">
							<label for="nameSmall" class="form-label"></label>
							<input type="password" name="password" class="form-control" required="required" placeholder="PassWord" />
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="submit" class="btn btn-danger">탈퇴하기</button>
					<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
						Close
					</button>
				</div>
			</form>
			
		</div>
	</div>
</div>
<%-- 모달창 --%>