package org.park.Services;

import org.park.model.Activity;

import java.util.List;

public interface ActivityService {
	void saveActivity(Activity activity);
	List<Activity> getAllActivities();
	void updateActivity(Activity activity);
	void deleteActivity(Long activityId);
}
