package ua.lviv.trainapplogos.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.trainapplogos.domain.Periodical;

public interface PeriodicalRepository extends JpaRepository<Periodical, Integer> {

}
