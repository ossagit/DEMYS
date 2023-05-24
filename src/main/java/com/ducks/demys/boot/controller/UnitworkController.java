package com.ducks.demys.boot.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ducks.demys.boot.service.UnitworkService;
import com.ducks.demys.boot.vo.Unitwork;

@Controller
public class UnitworkController {

	private UnitworkService unitworkService;

	public UnitworkController(UnitworkService unitworkService) {
		this.unitworkService = unitworkService;

	}

	
	  @RequestMapping("/project/unitwork") 
	  public String showList(Model model) {
	  
		  List<Unitwork> unitWorkList = unitworkService.getUnitworkListByPJ_NUM(1);
		  model.addAttribute("unitWorkList", unitWorkList);
	  
		  return "/project/unitwork"; 
	 }
	  
	 
	@RequestMapping("/project/unitwork/load")
	@ResponseBody
	public List<Unitwork> loadUnitworkData() {
		List<Unitwork> unitworkData = unitworkService.getUnitworkListByPJ_NUM(1);
		return unitworkData;
	}

}
