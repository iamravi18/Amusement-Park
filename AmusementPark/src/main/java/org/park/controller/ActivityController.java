package org.park.controller;

import org.park.Services.ActivityService;
import org.park.model.Activity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

@RequestMapping("/activity")
public class ActivityController {
	
	@Autowired
	 ActivityService activityservice;
@GetMapping("/addactivity")
public String addActivity(Model model) {
	Activity activity =new Activity();
	model.addAttribute("activity",activity);
	return "addActivity";
	
}
@PostMapping("/addactivity")
public String addActivityProcess(@ModelAttribute("activity")Activity activity) {
	
	if(activityservice.addActivity(activity)==null){
		return "unsuccessactivity";

}
	return "successactivity";
}
@GetMapping("/modifyactivity")
public String modifyActivity(Model model) {
	Activity activity=new Activity();
	model.addAttribute("activity",activity);
	return "modifyactivity";
}

@GetMapping("/fetchactivity")
public String fetchActivity(@ModelAttribute("activity")Activity activity,Model model) {
	Activity act=activityservice.findAcitvityById(activity.getActivityId());
	if (act==null) {
		return "activitynotfound";
	}
	else {
		model.addAttribute("activity",act);
		return "activitymodifyfound";
		
	}
}
@PostMapping("/modifyactivityprocess")
public String modifyActivityprocess(@ModelAttribute("activity") Activity activity) {
	activity=activityservice.Updateactivity(activity);
	if(activity==null) {
		return "modifyFailed";
	}
	else {
		return "modifiedSucess";
	}
}
@GetMapping("/deleteactivity")
public String deleteActivity(Model model) {
	Activity activity=new Activity();
	model.addAttribute("activity",activity);
	return "deleteactivity";
}
@PostMapping("/fetchdelete")
public String fetchdelete(@ModelAttribute("activity")Activity activity,Model model) {
	
	Activity act=activityservice.deleteActivity(activity.getActivityId());
	if (act==null) {
		return "activitynotfound";
	}
	else {
		model.addAttribute("activity",act);
		return "activitydelete";
		
	}
}


}
