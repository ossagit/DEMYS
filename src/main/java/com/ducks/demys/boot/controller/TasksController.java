package com.ducks.demys.boot.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ducks.demys.boot.service.MemberService;
import com.ducks.demys.boot.service.TasksService;
import com.ducks.demys.boot.vo.Tasks;

@Controller
public class TasksController {
	
	TasksService tasksService;
	MemberService memberService;
	public TasksController(TasksService tasksService, MemberService memberService) {
		this.tasksService=tasksService;
		this.memberService=memberService;
	}
	
	@RequestMapping("/tasks/list")
	public String showlist(){
		return "tasks/list";
	}
	
	@RequestMapping("/tasks/cardlist")
	@ResponseBody
	public Map<String, Object> showCardList(){
		int loginUserId=3;
		List<Tasks> taskList=tasksService.getTasksListByMEMBER_NUM(loginUserId);
		List<Tasks> todoList=new ArrayList<Tasks>();
		List<Tasks> inprogressList=new ArrayList<Tasks>();
		List<Tasks> doneList=new ArrayList<Tasks>();
		for(Tasks task : taskList) {
			if(task.getTASKS_STATUS()==1) {
				todoList.add(task);
			}
			if(task.getTASKS_STATUS()==2) {
				inprogressList.add(task);
			}
			if(task.getTASKS_STATUS()==3) {
				doneList.add(task);
			}
		}
		
		Map<String,Object> dataMap=new HashMap<String,Object>();
		
		dataMap.put("todoList", todoList);
		dataMap.put("inprogressList", inprogressList);
		dataMap.put("doneList", doneList);
		
		return dataMap;
	}
	
	@RequestMapping("/tasks/moveCard")
	@ResponseBody
	public void doMoveCard(@RequestBody Tasks task){
		int T_N=task.getTASKS_NUM();
		int T_S=task.getTASKS_STATUS();
		tasksService.modifyTasksStatus(T_N,T_S);
	}
	
	@RequestMapping("/tasks/regist")
	@ResponseBody
	public void registTask(@RequestBody Tasks tasks) {
		tasksService.registTasks(tasks);
	}
	
	@RequestMapping("/tasks/getTask")
	@ResponseBody
	public Tasks returnTask(@RequestBody Tasks tasks) {
		Tasks task = tasksService.getTasksByTASKS_NUM(tasks.getTASKS_NUM());
		return task;
	}
}
