<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ include file="common/head.jsp" %>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
<link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css" rel="stylesheet" type='text/css'>
<link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.css"   rel="stylesheet" type='text/css'>


		<div style="width: 100%; height: 955px;">
			<div class="flex justify-center items-center" style="width: 100%; height:30%;">
				<div class="flex items-center" style="width: 99%; height:91%; border: 2px solid gray;">
					<div class="flex-col flex justify-center items-center" style="width: 33%; height:85%; border-right: 2px solid gray;">
						<i class="fa-sharp fa-solid fa-pen-to-square" style="font-size:3rem;">총프로젝트</i>
						<div>
							<span style="font-size:2rem; color:red;">13</span>
							<span style="font-size:1.5rem;">건</span>
						</div>
						<div>
							<i class="fa-solid fa-compact-disc" style="color:green;"><span style="color:black;">완료 0 건</span></i>
							<i class="fa-solid fa-compact-disc" style="color:blue;"><span style="color:black;">진행중 12 건</span></i>
							<i class="fa-solid fa-compact-disc" style="color:gold;"><span style="color:black;">지연 0 건</span></i>
							<i class="fa-solid fa-compact-disc" style="color:red;"><span style="color:black;">실패 1 건</span></i>
						</div>
					</div>
					<div class="flex-col flex justify-center items-center" style="width: 34%; height:85%; border-right: 2px solid gray;">
						<i class="fa-sharp fa-solid fa-bars-progress">이번달 종료되는 프로젝트</i>
						<br/>
						<table style="width:90%;">
							<c:forEach begin="0" end="4" step="1">
								<tr>
									<td><div class="badge badge-outline badge-warning gap-2">D-1</div></td>
									<td><i class="fa-solid fa-flag" style="color:red;"></i></td>
									<td>MTQ 프로젝트관리시스템</td>
									<td>진행률</td>
									<td> | </td>
									<td>98%</td>
								</tr>
							</c:forEach>
						</table>
					</div>
					<div class="flex-col flex justify-center items-center" style="width: 33%; height:85%; ">
						<i class="fa-regular fa-clock">실시간 이슈</i>
						<br/>
						<table style="width:90%;">
							<c:forEach begin="0" end="4" step="1">
								<tr>
									<td style="display:flex;width:30px;">
										<i class="fa-regular fa-message fa-flip-horizontal" style="font-size:23px;position:relative;"></i>
										<div style="z-index:-1; position:absolute; line-height:17px; font-weight:bolder; color:red;">&nbsp;2</div>
									</td>
									<td>캘린더 구현 ERORR 500 이슈</td>
									<td>김다예</td>
									<td> | </td>
									<td>캘린더 특정날짜에 데이..</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
			<hr/>
			<div class="flex justify-between" style="width: 100%; height:5%;">
				<div class="flex justify-start items-center">
					&nbsp;&nbsp;<a href="#"><span style=" margin:5px; border-right: 2px solid gray; font-size:15px;">진행현황&nbsp;&nbsp;</span></a>
					<a href="#"><span style="font-size:15px; margin:5px;">이슈현황</span></a>
				</div>
				<div class="flex justify-end items-center">
					<div style="font-size:15px;">상태</div>
						<select class="select select-bordered select-sm w-full max-w-xs" style="width:150px; height:15px; margin:5px;">
						  <option disabled selected>전체프로젝트</option>
						  <option>전체프로젝트</option>
						  <option>담당프로젝트</option>
						</select>
					
					<div style="font-size:15px;">중요도</div>
						<select class="select select-bordered select-sm w-full max-w-xs" style="width:100px; height:15px; margin:5px;">
						  <option disabled selected>전체</option>
						  <option>전체</option>
						  <option>중요</option>
						  <option>보통</option>
						  <option>낮음</option>
						</select>
					
					<div style="font-size:15px;">기간</div>
						<select class="select select-bordered select-sm w-full max-w-xs" style="width:150px; height:15px; margin:5px;">
						  <option disabled selected>마감임박순</option>
						  <option>마감임박순</option>
						  <option>등록일자순</option>
						</select>
				</div>
			</div>
			<hr/>
			<div style="width: 100%; height:4%;">
			
			</div>
			<hr/>
			<div class="flex" style="width: 100%; height:61%;">
				<div style="width: 50%; height:100%;">
					<table class="table w-full">
						<thead>
							<tr>
								<th>사업구분</th>
								<th>프로젝트명</th>
								<th>업체명</th>
								<th>시작일</th>
								<th>진행률</th>
								<th>담당자</th>
								<th>이슈</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach begin="0" end="8" step="1">
								<tr class="hover">
									<td>교육</td>
									<td>MTQ프로젝트</td>
									<td>(주)MTQ</td>
									<td>2023.5.17</td>
									<td>20%</td>
									<td>김원미</td>
									<td>11개</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div style="width: 50%; height:100%; border: 1px solid red;">
				</div>
			</div>
		</div>
<%@ include file="common/foot.jsp"%>