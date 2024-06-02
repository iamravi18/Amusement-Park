package org.park.controller;

import org.park.Services.ActivityService;
import org.park.model.Activity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/activities")
public class ActivityController {

	@Autowired
	private ActivityService activityService;

	@PostMapping("/add")
	public ResponseEntity<String> addActivity(@RequestBody Activity activity) {
		activityService.saveActivity(activity);
		return ResponseEntity.ok("Activity added successfully");
	}

	@GetMapping("/view")
	public ResponseEntity<List<Activity>> viewActivities() {
		List<Activity> activities = activityService.getAllActivities();
		return ResponseEntity.ok(activities);
	}

	@PutMapping("/update")
	public ResponseEntity<String> updateActivity(@RequestBody Activity activity) {
		activityService.updateActivity(activity);
		return ResponseEntity.ok("Activity updated successfully");
	}

	@DeleteMapping("/delete")
	public ResponseEntity<String> deleteActivity(@RequestParam Long activityId) {
		activityService.deleteActivity(activityId);
		return ResponseEntity.ok("Activity deleted successfully");
	}
}