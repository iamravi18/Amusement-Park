package org.park.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="activity")
public class Activity {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="activityId")
	private long activityId;
	@Column(name="ActivityDesc",nullable=false)
	private String activityDesc;
	@Column(name="ActivityCharges",nullable=false)
	private Integer activityCharges;
	public Activity() {
		
		// TODO Auto-generated constructor stub
	}
	public Activity(String activityDesc, Integer activityCharges) {
		super();
		this.activityDesc = activityDesc;
		this.activityCharges = activityCharges;
	}
	public long getActivityId() {
		return activityId;
	}
//	public void setActivityId(long activityId) {
//		this.activityId = activityId;
//	}
	public String getActivityDesc() {
		return activityDesc;
	}
	public void setActivityDesc(String activityDesc) {
		this.activityDesc = activityDesc;
	}
	public Integer getActivityCharges() {
		return activityCharges;
	}
	public void setActivityCharges(Integer activityCharges) {
		this.activityCharges = activityCharges;
	}
	
	
}
