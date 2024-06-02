package org.park.Services;

import org.park.Repository.ActivityRepository;
import org.park.model.Activity;
import org.park.Services.ActivityService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ActivityServiceImpl implements ActivityService {

	@Autowired
	private ActivityRepository activityRepository;

	@Override
	public void saveActivity(Activity activity) {
		activityRepository.save(activity);
	}

	@Override
	public List<Activity> getAllActivities() {
		return activityRepository.findAll();
	}

	@Override
	public void updateActivity(Activity activity) {
		activityRepository.save(activity);
	}

	@Override
	public void deleteActivity(Long activityId) {
		activityRepository.deleteById(activityId);
	}
}