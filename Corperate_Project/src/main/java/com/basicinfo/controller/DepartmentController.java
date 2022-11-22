
package com.basicinfo.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.spring.domain.DepartmentVO;
import com.spring.domain.SearchVO;
import com.spring.paging.Client_Paging;
import com.spring.service.DepartmentService;

@Controller
@RequestMapping("/basicinfo/department/*")
public class DepartmentController {
	
	private static final Logger logger = LoggerFactory.getLogger(DepartmentController.class);

	@Autowired
	private DepartmentService service;

	private final String redirect = "redirect:/basicinfo/department/list";
	
	@GetMapping(value="/list")
	public void list(Model model, SearchVO vo, HttpServletRequest request) {
		
		Map<String, ?> flashMap = RequestContextUtils.getInputFlashMap(request);
		if(flashMap!=null)
			vo =(SearchVO)flashMap.get("searchvo");
		int totalCount = service.getTotalCount(vo);
		Client_Paging pageInfo = new Client_Paging(vo.getPageNumber(),"10",totalCount,"/basicinfo/department/list",vo.getWhatColumn(),vo.getKeyword(),0);
		
		model.addAttribute("pageInfo",pageInfo);
		model.addAttribute("totalCount",totalCount);
		model.addAttribute("voList",service.list(pageInfo));
		model.addAttribute("searchvo",vo);
	}
	
	@PostMapping(value="/insert")
	public String insert(DepartmentVO vo) {	
		service.add(vo);
		return redirect;
	}
	
	@PostMapping(value="/update")
	public String update(DepartmentVO vo, HttpServletRequest request, SearchVO searchvo, RedirectAttributes rttr) {				
		service.modify(vo);
		rttr.addFlashAttribute("searchvo",searchvo);
		return redirect;
	}
	
	@GetMapping(value="/delete/{no}")
	public String delete(DepartmentVO vo, @PathVariable(value="no") int no) {				
		service.delete(no);
		return redirect;
	}
	
	@PostMapping("/selectDelete")
	public String selectDelete(HttpServletRequest request){
		
		service.selectDelete(request.getParameterValues("rowcheck"));
		return redirect;
	}
}