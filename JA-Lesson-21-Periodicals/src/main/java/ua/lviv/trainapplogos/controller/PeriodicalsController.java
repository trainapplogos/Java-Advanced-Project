package ua.lviv.trainapplogos.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ua.lviv.trainapplogos.domain.Periodical;
import ua.lviv.trainapplogos.service.PeriodicalsService;

@Controller
public class PeriodicalsController {
	
	@Autowired
	private PeriodicalsService periodicalsService;
	
	@RequestMapping(value = "/addPeriodical", method = RequestMethod.POST)
	public ModelAndView createPeriodical(@Validated @ModelAttribute("periodical") Periodical periodical,
			BindingResult bindingResult) {
		
		periodicalsService.save(periodical);
		
	    return new ModelAndView("redirect:/home");
	}
	
	

}
