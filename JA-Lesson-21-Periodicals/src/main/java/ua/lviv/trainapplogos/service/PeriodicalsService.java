package ua.lviv.trainapplogos.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ua.lviv.trainapplogos.dao.PeriodicalRepository;
import ua.lviv.trainapplogos.domain.Periodical;

@Service
public class PeriodicalsService {
	
	@Autowired
	private PeriodicalRepository periodicalRepository;
	
	public Periodical save(Periodical periodical) {
		return periodicalRepository.save(periodical);
	}
	
	public List<Periodical> getAllPeriodicals() {
		return periodicalRepository.findAll();
	}
	
}
