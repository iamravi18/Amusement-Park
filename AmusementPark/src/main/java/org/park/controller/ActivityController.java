package org.park.controller;

import org.park.Services.ActivityService;
import org.park.model.Activity;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
@RequestMapping("/activities")
public class ActivityController {
	private static final Logger logger = LoggerFactory.getLogger(ActivityController.class);
	@Autowired
	private ActivityService activityService;

	@ModelAttribute("activity")
	public Activity getActivity() {
		return new Activity();
	}


		@GetMapping("/add")
	public String showAddActivityPage() {
		return "addActivity";
	}

	@PostMapping("/add")
	public String addActivity(@ModelAttribute Activity activity) {
		activityService.saveActivity(activity);
		return "redirect:/activities/view";// Redirect to a page or show a success message
	}

	@GetMapping("/view")
	public String viewActivities(Model model) {
		List<Activity> activities = activityService.getAllActivities();
		logger.debug("Fetched Activities: " + activities);
		model.addAttribute("activities", activities);
		return "viewActivities";
	}
	@GetMapping("/viewAdmin")
	public String viewAdminActivities(Model model) {
		List<Activity> activities = activityService.getAllActivities();
		logger.debug("Fetched Activities: " + activities);
		model.addAttribute("activities", activities);
		return "AdminActivity";
	}
	@GetMapping("/viewCustomer")
	public String viewCustomerActivities(Model model) {
		List<Activity> activities = activityService.getAllActivities();
		logger.debug("Fetched Activities: " + activities);
		model.addAttribute("activities", activities);
		return "CustomerActivity";
	}


	@GetMapping("/update")
	public String showUpdateActivityForm() {
		return "selectActivityForUpdate";
	}

	@PostMapping("/update")
	public String showUpdateActivityPage(@RequestParam("activity_id") Long activityId, Model model) {
		Activity activity = activityService.getActivityById(activityId);
		if (activity != null) {
			model.addAttribute("activity", activity);
			logger.info("Activity found: " + activity);
			return "updateActivity";
		} else {
			return "redirect:/activities/viewAdmin";
		}
	}

	@PostMapping("/updateActivity")
	public String updateActivity(@ModelAttribute Activity activity) {
		logger.info("Updating activity: " + activity);
		activityService.updateActivity(activity);
		return "redirect:/activities/viewAdmin";
	}

	@GetMapping("/delete")
	public String showDeleteActivityForm() {
		return "selectActivityForDelete";
	}

	@PostMapping("/deleteActivity")
	public String deleteActivity(@RequestParam("activityId") Long activityId) {
		Activity activity = activityService.getActivityById(activityId);
		if (activity == null) {
			return "redirect:/activities/viewAdmin";
		}
		activityService.deleteActivity(activityId);
		return "redirect:/activities/viewAdmin";
	}


}