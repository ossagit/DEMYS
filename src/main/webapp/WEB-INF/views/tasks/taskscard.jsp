<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/4.7.7/handlebars.min.js"></script>    
<script type="text/x-handlebars-template"  id="taskcard-template" >
{{#each .}}
	<div class="{{area tasks_STATUS }} card bg-base-100 shadow-2xl" style="display: flex; flex-direction: row; width: 90%; height: 120px; margin: 5px; background-color:#CFF4FF;">
		<div class="card-body" style="width: 90%; height: 100%; margin: 0;">
			<div id="{{tasks_NUM}}-TC" class="card-title" style="margin: 0;">{{tasks_CONTENT }}</div>
			<div class="card-content flex">
				<div>종료일 : </div>
				<div>{{prettifyDate tasks_ENDDATE }}</div>
			</div>
		</div>
		<div class="flex flex-col justify-evenly items-center" style="width: 10%; height: 100%;">
				<div class="badge badge-md badge-{{color tasks_IMP }}" ></div>
			<div class="dropdown dropdown-left dropdown-end">
				<label tabindex="0" class="btn btn-ghost btn-sm m-1"><i class="fa-solid fa-arrow-right-arrow-left"></i></label>
				<ul tabindex="0" class="dropdown-content menu shadow bg-base-100 w-52 h-20">
					<li class="h-9 {{todoHidden tasks_STATUS }}" style="font-size:11px; font-weight:bolder;"><a href="javascript:moveCard({{tasks_NUM }} , 1);">TO DO</a></li>
					<li class="h-9 {{inprogressHidden tasks_STATUS }}" style="font-size:11px; font-weight:bolder;"><a href="javascript:moveCard({{tasks_NUM }} , 2);">IN PROGRESS</a></li>
					<li class="h-9 {{doneHidden tasks_STATUS }}" style="font-size:11px; font-weight:bolder;"><a href="javascript:moveCard({{tasks_NUM }} , 3);">DONE</a></li>
				</ul>
			</div>
			<div class="dropdown dropdown-left dropdown-end">
				<label tabindex="0" class="btn btn-ghost btn-sm m-1"><i class="fa-solid fa-ellipsis-vertical"></i></label>
				<ul tabindex="0" class="dropdown-content menu shadow bg-base-100 w-20 h-50">
					<li class="h-9" style="font-size:11px; font-weight:bolder;"><a href="javascript:modOpen({{tasks_NUM }});">수정</a></li>
					<li class="h-9" style="font-size:11px; font-weight:bolder;"><a href="javascript:removeCard({{tasks_NUM }});">삭제</a></li>
					<li class="h-9{{shareHidden tasks_SHARE }}" style="font-size:11px; font-weight:bolder;"><a href="javascript:cardShare({{tasks_NUM }});">공유</a></li>
				</ul>
			</div>
		</div>
	</div>
{{/each }}
</script>

<script>
Handlebars.registerHelper({
	"prettifyDate":function(timeValue){ //Handlbars에 날짜출력함수 등록
		var dateObj=new Date(timeValue);
		var year=dateObj.getFullYear();
		var month=dateObj.getMonth()+1;
		var date=dateObj.getDate();
		var hour=('0' + dateObj.getHours()).slice(-2);
		var minute=('0' + dateObj.getMinutes()).slice(-2);
		return year+"년 "+month+"월 "+date+"일 "+hour+"시 "+minute+"분";
	},	
	
	"color":function(TASKS_IMP){
		switch(TASKS_IMP){
		case 1:
			return "error";
		case 2:
			return "warning";
		case 3:
			return "success";
		}
	},
	
	"area":function(TASKS_STATUS){
		switch(TASKS_STATUS){
		case 1:
			return "todocard";
		case 2:
			return "inprogresscard";
		case 3:
			return "donecard";
		}
	},
	
	"todoHidden":function(TASKS_STATUS){
		if(TASKS_STATUS==1)
			return "hidden";
		else
			return "";
	},
	
	"inprogressHidden":function(TASKS_STATUS){
		if(TASKS_STATUS==2)
			return "hidden";
		else
			return "";
	},
	
	"doneHidden":function(TASKS_STATUS){
		if(TASKS_STATUS==3)
			return "hidden";
		else
			return "";
	},
	
	"shareHidden":function(TASKS_SHARE){
		if(TASKS_SHARE==1)
			return "";
		else
			return "hidden";
		
	}
});

</script>



<script>

function printData(taskArr,target,templateObject){
	var template=Handlebars.compile(templateObject.html());
	var html = template(taskArr);
	var nullHtml = '';
	
	if(taskArr[0].tasks_STATUS==1){		
		$('.todocard').remove();
	}
	else if(taskArr[0].tasks_STATUS==2){		
		$('.inprogresscard').remove();
	}
	else if(taskArr[0].tasks_STATUS==3){		
		$('.donecard').remove();
	}
	target.append(nullHtml);
	target.append(html);
}

function showTaskList(){
	$.getJSON('<%=request.getContextPath()%>/tasks/cardlist',function(data){
		printData(data.todoList,$('#todo-list'),$('#taskcard-template'));
		printData(data.inprogressList,$('#inprogress-list'),$('#taskcard-template'));
		printData(data.doneList,$('#done-list'),$('#taskcard-template'));
		console.log(data)
	});
}

window.onload=function(){
	showTaskList();
	
}

function moveCard(tasks_NUM,tasks_STATUS){
	
	var sendData={
			"tasks_NUM":tasks_NUM,
			"tasks_STATUS":tasks_STATUS
	}
	
	$.ajax({
		url:"<%=request.getContextPath()%>/tasks/moveCard",
		type:"post",
		data:JSON.stringify(sendData),
		contentType:"application/json",
		success:function(){
			showTaskList();
		},
		error:function(error){
			alert("실패했습니다.");
		}
	});
}

</script>

<script>
function regOpen(TASK_STATUS) {
    var modalPop = $('.reg_modal_wrap');
    var modalBg = $('.reg_modal_bg');
    
    $('#reg_tasks_STATUS').val(TASK_STATUS);

    $(modalPop).show();
    $(modalBg).show();

}

function modOpen(tasks_NUM) {
    var modalPop = $('.mod_modal_wrap');
    var modalBg = $('.mod_modal_bg');

    $(modalPop).show();
    $(modalBg).show();

}

function regClose() {
   var modalPop = $('.reg_modal_wrap');
   var modalBg = $('.reg_modal_bg');

   $(modalPop).hide();
   $(modalBg).hide();

}
 
function modClose() {
	   var modalPop = $('.mod_modal_wrap');
	   var modalBg = $('.mod_modal_bg');

	   $(modalPop).hide();
	   $(modalBg).hide();

}
function reg_go(){
	var tasks_CONTENT=$('#reg_tasks_CONTENT').val();
	var tasks_IMP=$('#reg_tasks_IMP').val();
	var tasks_ENDDATE=$('#reg_tasks_ENDDATE_date').val()+" "+$('#reg_tasks_ENDDATE_time').val()+":00";
	var tasks_SHARE=$('#reg_tasks_SHARE').val();
	var tasks_STATUS=$('#reg_tasks_STATUS').val();
	var member_NUM='3';
	
	if(tasks_SHARE=="on"){
		tasks_SHARE='1';
	}else{
		tasks_SHARE='0';
	}
	var data={
			"TASKS_CONTENT":tasks_CONTENT,
			"TASKS_IMP":tasks_IMP,
			"STRING_ENDDATE":tasks_ENDDATE,
			"TASKS_SHARE":tasks_SHARE,
			"TASKS_STATUS":tasks_STATUS,
			"MEMBER_NUM":member_NUM
	}
	$.ajax({
		url:"<%=request.getContextPath()%>/tasks/regist",
		type:"post",
		data:JSON.stringify(data),
		contentType:'application/json',
		success:function(data){
			alert('일정이 등록되었습니다.');
			$('#tasks_CONTENT').val("");
			$('#tasks_IMP').val("");
			$('#reg_tasks_ENDDATE_date').val("");
			$('#reg_tasks_ENDDATE_time').val("");
			$('#reg_tasks_SHARE').val("");
			$('#reg_tasks_STATUS').val("");

			var modalPop = $('.reg_modal_wrap');
			var modalBg = $('.reg_modal_bg');
			
			$(modalPop).hide();
			$(modalBg).hide();
			
			showTaskList();
		},
		error:function(error){
			alert("실패했습니다.");
		}
	});
}

</script>