package ua.lviv.trainapplogos.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import ua.lviv.trainapplogos.domain.Bucket;

public interface BucketRepository extends JpaRepository<Bucket, Integer> {

}
