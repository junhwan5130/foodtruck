package scit.webproject.app.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import scit.webproject.app.dto.Materials;
import scit.webproject.app.service.MaterialsService;

@Controller
public class MaterialsController {
	@Autowired
	MaterialsService mservice;
	
	@RequestMapping(value="/insertMaterials", method=RequestMethod.POST)
	public String insertMaterials(Materials mtr){
		
		System.out.println(mtr);
		mservice.insertMaterials(mtr);
		return "redirect:/IngredientsTable";
	}
	@RequestMapping(value="/addMaterials", method=RequestMethod.POST)
	public @ResponseBody String addMaterials(Materials mtr){
		
		System.out.println(mtr);
		mservice.insertMaterials(mtr);
		return "ok";
	}
	@RequestMapping(value="/showMaterials", method=RequestMethod.GET)
	public @ResponseBody List<Materials> showMaterials(Materials mtr){
		List<Materials> list = mservice.selectAllMaterials();
		
		return list;
	}
	
	@RequestMapping(value="/deleteMaterials", method=RequestMethod.POST)
	public @ResponseBody String deleteMaterials(String cm_id){
		int result=mservice.deleteMaterials(cm_id);
		if(result==1){
			System.out.println("delete success");
			return "ok";
		}else{
			return "fail";
		}
	}
	@RequestMapping(value="/deleteM", method=RequestMethod.POST)
	public String deleteM(String cm_id){
		System.out.println(cm_id);
		mservice.deleteMaterials(cm_id);
		return "redirect:/IngredientsTable";
	}
	
	@RequestMapping(value="/updateMaterials", method=RequestMethod.POST)
	public String updateMaterials(Materials mtr){
		mservice.updateMaterials(mtr);
		return "";
	}
	
	@RequestMapping(value = "/IngredientsTable", method = RequestMethod.GET)
	public String IngredientsTable(Model model) {
		List<Materials> list =mservice.selectAllMaterials();
		model.addAttribute("list", list);
		return "IngredientsTable";
	}
	
	@RequestMapping(value = "/IngredientsInput", method = RequestMethod.GET)
	public String IngredientsInput() {
				
		return "IngredientsInput";
	}
	@RequestMapping(value = "/IngredientsUpdate", method = RequestMethod.GET)
	public String IngredientsUpdate() {
				
		return "IngredientsUpdate";
	}
	@RequestMapping(value = "/IngredientsDelete", method = RequestMethod.GET)
	public String IngredientsDelete() {
				
		return "IngredientsDelete";
	}
	

}
