package org.park.Services;

import org.park.Repository.ActivityRepository;
import org.park.model.Activity;
import org.park.Services.ActivityService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ActivityServiceImpl implements ActivityService {
	private static final Logger logger = LoggerFactory.getLogger(ActivityServiceImpl.class);
	@Autowired
	private ActivityRepository activityRepository;

	public ActivityServiceImpl(ActivityRepository activityRepository) {

		this.activityRepository = activityRepository;
	}
	@Override
	public void saveActivity(Activity activity) {

		activityRepository.save(activity);
	}

	@Override
	public List<Activity> getAllActivities() {

		return activityRepository.findAll();
	}

	public Activity getActivityById(Long activity_id) {
		return activityRepository.findById(activity_id).orElse(null);
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