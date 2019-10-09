package scit.webproject.app.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import scit.webproject.app.dto.Materials;

@Repository
public class MaterialsDAO {
	@Autowired
	SqlSession sqlsession;
	
	public int insertMaterials(Materials mtr){
		int result =0;
		MaterialsMapper mapper = sqlsession.getMapper(MaterialsMapper.class);
		try {
			result = mapper.insertMaterials(mtr);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
			// TODO: handle exception
		}
		return result;
	}
	
	public int deleteMaterials(String cm_id){
		int result=0;
		MaterialsMapper mapper = sqlsession.getMapper(MaterialsMapper.class);
		try {
			result = mapper.deleteMaterials(cm_id);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
			// TODO: handle exception
		}
		return result;
	}
	
	public int updateMaterials(String cm_id){
		int result=0;
		MaterialsMapper mapper = sqlsession.getMapper(MaterialsMapper.class);
		try {
			result = mapper.updateMaterials(cm_id);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
			// TODO: handle exception
		}
		return result;
	}
	
	public List<Materials> selectAllMaterials(){
		List<Materials> result = new ArrayList<Materials>();
		MaterialsMapper mapper = sqlsession.getMapper(MaterialsMapper.class);
		try {
			result = mapper.selectAllMaterials(); 
		} catch (Exception e) {
			e.printStackTrace();
			return result;
			// TODO: handle exception
		}
		return result;
	}
	
	public Materials selectOneMaterials(String cm_id){
		Materials result = null;
		MaterialsMapper mapper = sqlsession.getMapper(MaterialsMapper.class);
		try {
			result = mapper.selectOneMaterials(cm_id); 
		} catch (Exception e) {
			e.printStackTrace();
			return result;
			// TODO: handle exception
		}
		return result;
	}

}
