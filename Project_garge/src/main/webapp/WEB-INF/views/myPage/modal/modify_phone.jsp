<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Small Modal -->
<div class="modal fade" id="modify_phone" tabindex="-1" aria-hidden="true">
	<div class="modal-dialog modal-sm modal-dialog-centered" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel2">프로필 수정</h5>
				<button
					type="button"
					class="btn-close"
					data-bs-dismiss="modal"
					aria-label="Close"
				></button>
			</div>
			
			<form action="MyInfoModify" id="MyInfoModify" method="post">
				<input type="hidden" name="modify_type" value="member_nick_name">
				<input type="hidden" name="modify_type2" value="member_profile_img">
				<div class="modal-body">
					<div class="row">
						<div class="col mb-3">
							<label for="nameSmall" class="form-label">전화번호 변경</label>
							<input type="text" name="modify_value" class="form-control" placeholder="전화번호" />
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-outline-secondary" data-bs-dismiss="modal">
						취소
					</button>
					<button type="submit" class="btn btn-primary" onclick="submitForm()">저장</button>
				</div>
			</form>
		</div>
	</div>
</div>