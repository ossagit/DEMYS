<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../common/head.jsp"%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" 
		type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
		type='text/css'>

<style>
.card-body {
	padding: 1rem;
}
</style>
<div style="width: 100%; height: 955px;">
	<div class="flex items-center" style="width: 100%; height: 100%; background-color: #e7e7e7;">
		<div class="flex justify-evenly" style="width: 100%; height: 90%;">
			<div class="shadow-xl shadow-black rounded-lg" style="width: 30%; height: 98.5%; margin-top: 5px; background-color:white;">
				<div class="title flex justify-around items-center" style="height: 10%;">
					<div style="color:navy; font-size:1.5rem; font-weight:bolder;">&nbsp;&nbsp;TO DO </div>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-sm" style="background-color:navy; color:white; font-size:1rem;">十 추가</button>
				</div>
				<div class="content flex flex-col items-center" style="width:98%; height: 89%; margin-top:5px; margin-left: 10px; overflow: auto;">
					<c:forEach var="todo" items="${todoList }">
						<div class="card bg-base-100 shadow-2xl" style="display: flex; flex-direction: row; width: 90%; height: 120px; margin: 5px; background-color:#CFF4FF;">
							<div class="card-body" style="width: 90%; height: 100%; margin: 0;">
								<div class="card-title" style="margin: 0;">${todo.TASKS_CONTENT }</div>
								<div class="card-content flex">
									<div>종료일 :&nbsp;</div>
									<div><fmt:formatDate value="${todo.TASKS_ENDDATE }" type="both" pattern="yyyy년 MM월 dd일 a hh시 mm분"/></div>
								</div>
							</div>
							<div class="flex flex-col justify-evenly items-center" style="width: 10%; height: 100%;">
							
								<c:if test="${todo.TASKS_IMP=='1'}">
									<div class="badge badge-md badge-error" ></div>
								</c:if>
								
								<c:if test="${todo.TASKS_IMP=='2'}">
									<div class="badge badge-md badge-warning" ></div>
								</c:if>
								
								<c:if test="${todo.TASKS_IMP=='3'}">
									<div class="badge badge-md badge-success" ></div>
								</c:if>
								<div class="dropdown dropdown-left dropdown-end">
									<label tabindex="0" class="btn btn-ghost btn-sm m-1"><i class="fa-solid fa-arrow-right-arrow-left"></i></label>
									<ul tabindex="0" class="dropdown-content menu shadow bg-base-100 w-52 h-20">
										<li class="h-9" style="font-size:11px; font-weight:bolder;"><a href="javascript:moveINPROGRESS('${todo.TASKS_NUM }');">IN PROGRESS</a></li>
										<li class="h-9" style="font-size:11px; font-weight:bolder;"><a>DONE</a></li>
									</ul>
								</div>
								
								<i class="fa-solid fa-ellipsis-vertical"></i>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			
			<div class="shadow-xl shadow-black rounded-lg" style="width: 30%; height: 98.5%; margin-top: 5px; background-color:white;">
				<div class="title flex justify-around items-center" style="height: 10%;">
					<div style="color:navy; font-size:1.5rem; font-weight:bolder;">&nbsp;&nbsp;IN PROGRESS </div>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-sm" style="background-color:navy; color:white; font-size:1rem;">十 추가</button>
				</div>
				<div class="content flex flex-col items-center" style="width:98%; height: 89%; margin-top:5px; margin-left: 10px; overflow: auto;">
					<c:forEach var="inprogress" items="${inprogressList }">
						<div class="card bg-base-100 shadow-2xl" style="display: flex; flex-direction: row; width: 90%; height: 120px; margin: 5px; background-color:#CFF4FF;">
							<div class="card-body" style="width: 90%; height: 100%; margin: 0;">
								<div class="card-title" style="margin: 0;">${inprogress.TASKS_CONTENT }</div>
								<div class="card-content flex">
									<div>종료일 :&nbsp;</div>
									<div><fmt:formatDate value="${inprogress.TASKS_ENDDATE }" type="both" pattern="yyyy년 MM월 dd일 a hh시 mm분"/></div>
								</div>
							</div>
							<div class="flex flex-col justify-evenly items-center" style="width: 10%; height: 100%;">
								<c:if test="${inprogress.TASKS_IMP=='1'}">
									<div class="badge badge-md badge-error" ></div>
								</c:if>
								
								<c:if test="${inprogress.TASKS_IMP=='2'}">
									<div class="badge badge-md badge-warning" ></div>
								</c:if>
								
								<c:if test="${inprogress.TASKS_IMP=='3'}">
									<div class="badge badge-md badge-success" ></div>
								</c:if>
								<i class="fa-solid fa-arrow-right-arrow-left"></i>
								<i class="fa-solid fa-ellipsis-vertical"></i>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			
			<div class="shadow-xl shadow-black rounded-lg" style="width: 30%; height: 98.5%; margin-top: 5px; background-color:white;">
				<div class="title flex justify-around items-center" style="height: 10%;">
					<div style="color:navy; font-size:1.5rem; font-weight:bolder;">&nbsp;&nbsp;DONE </div>
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button class="btn btn-sm" style="background-color:navy; color:white; font-size:1rem;">十 추가</button>
				</div>
				<div class="content flex flex-col items-center" style="width:98%; height: 89%; margin-top:5px; margin-left: 10px; overflow: auto;">
					<c:forEach var="done" items="${doneList }">
						<div class="card bg-base-100 shadow-2xl" style="display: flex; flex-direction: row; width: 90%; height: 120px; margin: 5px; background-color:#CFF4FF;">
							<div class="card-body" style="width: 90%; height: 100%; margin: 0;">
								<div class="card-title" style="margin: 0;">${done.TASKS_CONTENT }</div>
								<div class="card-content flex">
									<div>종료일 :&nbsp;</div>
									<div><fmt:formatDate value="${done.TASKS_ENDDATE }" type="both" pattern="yyyy년 MM월 dd일 a hh시 mm분"/></div>
								</div>
							</div>
							<div class="flex flex-col justify-evenly items-center" style="width: 10%; height: 100%;">
								<c:if test="${done.TASKS_IMP=='1'}">
									<div class="badge badge-md badge-error" ></div>
								</c:if>
								
								<c:if test="${done.TASKS_IMP=='2'}">
									<div class="badge badge-md badge-warning" ></div>
								</c:if>
								
								<c:if test="${done.TASKS_IMP=='3'}">
									<div class="badge badge-md badge-success" ></div>
								</c:if>
								<i class="fa-solid fa-arrow-right-arrow-left"></i>
								<i class="fa-solid fa-ellipsis-vertical"></i>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	function moveINPROGRESS(status){
		
	}
</script>

<%@ include file="../common/foot.jsp"%>