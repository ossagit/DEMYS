package com.ducks.demys.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ducks.demys.boot.service.IssueService;
import com.ducks.demys.boot.service.MemberService;
import com.ducks.demys.boot.service.ProjectsService;

@Controller
public class MainController {
	
	MemberService memberService;
	ProjectsService projectsService;
	IssueService issueService;
	
	public MainController(MemberService memberService, ProjectsService projectsService, IssueService issueService) {
		this.memberService=memberService;
		this.projectsService=projectsService;
		this.issueService=issueService;
	}
	
	@RequestMapping("/main")
	public void showMain(){
	}
	
	@RequestMapping("/mainIssue")
	public void showMainIssue(){
	}
	
	@RequestMapping("/login")
	public void showlogin(){
	}
}
