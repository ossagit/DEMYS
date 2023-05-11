<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="flex justify-around" style="width: 100%; height: 59.5%;">

	<div style="width: 32%; height: 100%; border: 1px solid gray; margin-top: 5px; background-color: #e7e7e7;">
		<div class="title" style="margin: 5px; height: 5%;">
			<span>&nbsp;&nbsp;중요 </span>
			<span style="font-weight: bolder">10 </span>
		</div>
		<div class="content flex flex-col items-start" style="height: 95%; margin-left: 5px; overflow: auto;">
			<c:forEach begin="0" end="2" step="1">
				<div class="card card-side bg-base-100 shadow-xl" style="width: 90%; height: 30%; margin: 5px;">
					<figure style="background-color: red; width: 3%; height: 100%;"></figure>
					<div class="card-body" style="width: 97%; height: 100%; margin: 0;">
						<div class="card-title flex justify-between" style="margin: 0;">
							<div class="flex items-start" style="margin: 0;">
								<i class="fa-solid fa-flag" style="color: red;"></i>
								캘린더 구현 ERORR 500 이슈
								<div class="flex" style="position: relative;">
									<i class="fa-regular fa-message" style="font-size: 23px; margin: 0;"></i>
									<div style="z-index: 1; bottom: 1%; position: absolute; margin: 0; font-size: 15px; font-weight: bolder; color: red;">&nbsp;2</div>
								</div>
							</div>
							<div style="margin: 0; padding: 0;">
								<div class="badge badge-success gap-2" style="font-size: 12px; margin: 0;">진행중</div>
							</div>
						</div>
						<div style="font-size: 11px; text-color: gray;">(주)MTQ | MTQ 프로젝트</div>
						<div class="flex">
							<div>
								<img class="w-9 rounded-full" src="/resource/img/imja.jpg" />
							</div>
							<div>이주헌&nbsp;&nbsp;</div>
							<div class="badge badge-outline badge-error gap-2" style="font-weight: bolder; font-size: 12px; margin: 0;">08.18</div>
						</div>
						<div class="flex">
							<c:forEach begin="0" end="4" step="1">
								<div class="w-12 h-5 rounded" style="font-weight: bolder; font-size: 12px; border: 1px solid gray; background-color: #e7e7e7; text-align: center;">김원미</div>&nbsp;
							</c:forEach>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
	
	<div style="width: 32%; height: 100%; border: 1px solid gray; margin-top: 5px; background-color: #e7e7e7;">
		<div class="title" style="margin: 5px; height: 5%;">
			<span>&nbsp;&nbsp;보통 </span>
			<span style="font-weight: bolder">10 </span>
		</div>
		<div class="content flex flex-col items-start" style="height: 95%; margin-left: 5px; overflow: auto;">
			<c:forEach begin="0" end="2" step="1">
				<div class="card card-side bg-base-100 shadow-xl" style="width: 90%; height: 30%; margin: 5px;">
					<figure style="background-color: orange; width: 3%; height: 100%;"></figure>
					<div class="card-body" style="width: 97%; height: 100%; margin: 0;">
						<div class="card-title flex justify-between" style="margin: 0;">
							<div class="flex items-start" style="margin: 0;">
								<i class="fa-solid fa-flag" style="color: red;"></i>
								캘린더 구현 ERORR 500 이슈
								<div class="flex" style="position: relative;">
									<i class="fa-regular fa-message" style="font-size: 23px; margin: 0;"></i>
									<div style="z-index: 1; bottom: 1%; position: absolute; margin: 0; font-size: 15px; font-weight: bolder; color: red;">&nbsp;2</div>
								</div>
							</div>
							<div style="margin: 0; padding: 0;">
								<div class="badge badge-info gap-2" style="font-size: 12px; margin: 0;">완료</div>
							</div>
						</div>
						<div style="font-size: 11px; text-color: gray;">(주)MTQ | MTQ 프로젝트</div>
						<div class="flex">
							<div>
								<img class="w-9 rounded-full" src="/resource/img/imja.jpg" />
							</div>
							<div>이주헌&nbsp;&nbsp;</div>
							<div class="badge badge-outline badge-error gap-2" style="font-weight: bolder; font-size: 12px; margin: 0;">08.18</div>
						</div>
						<div class="flex">
							<c:forEach begin="0" end="4" step="1">
								<div class="w-12 h-5 rounded" style="font-weight: bolder; font-size: 12px; border: 1px solid gray; background-color: #e7e7e7; text-align: center;">김원미</div>&nbsp;
							</c:forEach>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<div style="width: 32%; height: 100%; border: 1px solid gray; margin-top: 5px; background-color: #e7e7e7;">
		<div class="title" style="margin: 5px; height: 5%;">
			<span>&nbsp;&nbsp;낮음 </span>
			<span style="font-weight: bolder">10 </span>
		</div>
		<div class="content flex flex-col items-start" style="height: 95%; margin-left: 5px; overflow: auto;">
			<c:forEach begin="0" end="2" step="1">
				<div class="card card-side bg-base-100 shadow-xl" style="width: 90%; height: 30%; margin: 5px;">
					<figure style="background-color: gold; width: 3%; height: 100%;"></figure>
					<div class="card-body" style="width: 97%; height: 100%; margin: 0;">
						<div class="card-title flex justify-between" style="margin: 0;">
							<div class="flex items-start" style="margin: 0;">
								<i class="fa-solid fa-flag" style="color: red;"></i>
								캘린더 구현 ERORR 500 이슈
								<div class="flex" style="position: relative;">
									<i class="fa-regular fa-message" style="font-size: 23px; margin: 0;"></i>
									<div style="z-index: 1; bottom: 1%; position: absolute; margin: 0; font-size: 15px; font-weight: bolder; color: red;">&nbsp;2</div>
								</div>
							</div>
							<div style="margin: 0; padding: 0;">
								<div class="badge badge-warning gap-2" style="font-size: 12px; margin: 0;">중지</div>
							</div>
						</div>
						<div style="font-size: 11px; text-color: gray;">(주)MTQ | MTQ 프로젝트</div>
						<div class="flex">
							<div>
								<img class="w-9 rounded-full" src="/resource/img/imja.jpg" />
							</div>
							<div>이주헌&nbsp;&nbsp;</div>
							<div class="badge badge-outline badge-error gap-2" style="font-weight: bolder; font-size: 12px; margin: 0;">08.18</div>
						</div>
						<div class="flex">
							<c:forEach begin="0" end="4" step="1">
								<div class="w-12 h-5 rounded" style="font-weight: bolder; font-size: 12px; border: 1px solid gray; background-color: #e7e7e7; text-align: center;">김원미</div>&nbsp;
							</c:forEach>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>

<%@ include file="common/foot.jsp"%>