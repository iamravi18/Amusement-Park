package org.park.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Activity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long activity_id;

	private String activity_name;
	private Integer activity_charges;
	private String activity_desc;
	private Integer admin_id;
	private String admin_name;

	// Getters and Setters
	public Long getActivity_id() {
		return activity_id;
	}

	public void setActivity_id(Long activity_id) {

		this.activity_id = activity_id;
	}

	public String getActivity_name() {

		return activity_name;
	}

	public void setActivity_name(String activity_name) {

		this.activity_name = activity_name;
	}

	public Integer getActivity_charges() {

		return activity_charges;
	}

	public void setActivity_charges(Integer activity_charges) {
		this.activity_charges = activity_charges;
	}

	public String getActivity_desc() {

		return activity_desc;
	}

	public void setActivity_desc(String activity_desc) {

		this.activity_desc = activity_desc;
	}

	public Integer getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(Integer admin_id) {

		this.admin_id = admin_id;
	}

	public String getAdmin_name() {

		return admin_name;
	}

	public void setAdmin_name(String admin_name){

		this.admin_name = admin_name;
	}
}
