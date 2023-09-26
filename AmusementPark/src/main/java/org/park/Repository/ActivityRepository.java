package org.park.Repository;

import org.park.model.Activity;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ActivityRepository extends JpaRepository<Activity,Long>{
	
}
