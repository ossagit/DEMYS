package com.ducks.demys.boot.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
	public String showTask(Model model){
		int loginUserId=3;
		List<Tasks> tasksList=tasksService.getTasksListByMEMBER_NUM(loginUserId);
		List<Tasks> todoList = new ArrayList<Tasks>();
		List<Tasks> inprogressList = new ArrayList<Tasks>();
		List<Tasks> doneList = new ArrayList<Tasks>();
		for(Tasks tasks : tasksList) {
			if(tasks.getTASKS_STATUS()==1) {
				todoList.add(tasks);
			}else if(tasks.getTASKS_STATUS()==2) {
				inprogressList.add(tasks);
			}else if(tasks.getTASKS_STATUS()==3) {
				doneList.add(tasks);
			}
		}
		
		model.addAttribute("todoList", todoList);
		model.addAttribute("inprogressList", inprogressList);
		model.addAttribute("doneList", doneList);
		return "tasks/list";
	}
}
