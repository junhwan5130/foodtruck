package scit.webproject.app.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import scit.webproject.app.dao.MaterialsDAO;
import scit.webproject.app.dto.Materials;

@Service
public class MaterialsService {
	@Autowired
	MaterialsDAO mdao;
	
	public int insertMaterials(Materials mtr){
		return mdao.insertMaterials(mtr);
	}
	public int updateMaterials(Materials mtr){
		return mdao.updateMaterials(mtr);
	}
	public int deleteMaterials(String cm_id){
		return mdao.deleteMaterials(cm_id);
	}
	public Materials selectOneMaterials(String cm_id){
		return mdao.selectOneMaterials(cm_id);
	}
	public List<Materials> selectAllMaterials(){
		return mdao.selectAllMaterials();
	}

}
