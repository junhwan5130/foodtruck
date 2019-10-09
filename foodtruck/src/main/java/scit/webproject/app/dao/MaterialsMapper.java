package scit.webproject.app.dao;

import java.util.List;

import scit.webproject.app.dto.Materials;

public interface MaterialsMapper {
	public int insertMaterials(Materials mtr);
	public int deleteMaterials(String cm_id);
	public int updateMaterials(String cm_id);
	public List<Materials> selectAllMaterials();
	public Materials selectOneMaterials(String cm_id);

}
