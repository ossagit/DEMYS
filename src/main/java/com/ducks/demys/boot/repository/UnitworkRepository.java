package com.ducks.demys.boot.repository;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.ducks.demys.boot.vo.Unitwork;

@Mapper
public interface UnitworkRepository {

	public List<Unitwork> getUnitworkListByMEMBER_NUM(int MEMBER_NUM);

	public List<Unitwork> getUnitworkListByPJ_NUM(int PJ_NUM);
	
	public Unitwork getUnitworkByUW_NUM(int UW_NUM);
	
	public int selectUnitworkSequenceNextValue();
	
	public void registUnitwork(Unitwork unitWork);
	
	public void modifyUnitwork(Unitwork unitWork);
	
	public void removeUnitwork(int UW_NUM);
	
}