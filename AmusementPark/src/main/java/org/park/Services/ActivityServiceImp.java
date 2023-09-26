package org.park.Services;

import java.util.*;
//import java.util.Optional;

import org.park.Repository.ActivityRepository;
import org.park.model.Activity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
//import org.springframework.ui.Model;

@Service
public class ActivityServiceImp implements ActivityService{

	@Autowired

//	@org.springframework.beans.factory.annotation.Autowired(required=true)
	private ActivityRepository activityRepository;
	
	
public ActivityServiceImp() {
		
		// TODO Auto-generated constructor stub
	}

public ActivityServiceImp(ActivityRepository activityrepository) {
//		super();
		this.activityRepository = activityrepository;
	}

@Override
	public List<Activity> getAllActivity() {
		return activityRepository.findAll();
}

	@Override
	public Activity addActivity(Activity activity) {
		
		if(activity==null)
			return null;
		else
			return activityRepository.save(activity);
		// TODO Auto-generated method stub
//		return null;
	}

	@Override
	public Activity findAcitvityById(long activityId) {
		Optional<Activity> oppt=activityRepository.findById(activityId);
		if(oppt.isPresent()) {
			return  oppt.get();
			
		}else {
		return null;
		}
	}
	

	@Override
	public Activity Updateactivity(Activity activity) {
		// TODO Auto-generated method stub
		return activityRepository.save(activity);
	}

	@Override
	public Activity deleteActivity(long activityId) {
		Optional<Activity> atc=activityRepository.findById(activityId);
		if(atc.isPresent()) {
			activityRepository.deleteById(activityId);
			return atc.get();
		}
		else {
			return null;
		}
		// TODO Auto-generated method stub
//		return null;
	}
	
//	public Activity updateActivity(Activity activity) {
//		
//	}

}
