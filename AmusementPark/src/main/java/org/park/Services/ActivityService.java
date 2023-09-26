package org.park.Services;

import java.util.List;

import org.park.model.Activity;
import org.springframework.stereotype.Service;

@Service
public interface ActivityService {
	public List<Activity> getAllActivity();
	public Activity addActivity(Activity activity);
	public Activity findAcitvityById(long activityId);
	public Activity Updateactivity(Activity activity);
	public Activity deleteActivity(long activityId);
	
	
}
