package com.cmpe281.tshirtshop;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "USER_PROFILE")
public class customerprofile {
	@Id
	@Column(name="u_id")
	private int u_id;
	
	@Column(name="u_age")
	private int u_age;
	
	@Column(name="u_gender")
	private String u_gender;
	
	@Column(name="u_height")
	private double u_height;
	
	@Column(name="u_weight")
	private double u_weight;
	
	@Column(name="u_bmiIndex")
	private double u_bmiIndex;
	
	@Column(name="u_bpSystolic")
	private int u_bpSystolic;
	
	@Column(name="u_bpDiastolic")
	private int u_bpDiastolic;
	
	@Column(name="u_diabetic")
	private String u_diabetic;
	
	@Column(name="u_diabeticHistory")
	private String u_diabeticHistory;
	
	@Column(name="u_cholestrolLDL")
	private double u_cholestrolLDL;
	
	@Column(name="u_heartPatient")
	private String u_heartPatient;
	
	@Column(name="u_physicalActivity")
	private String u_physicalActivity;
	
	@Column(name="u_dailyExercise")
	private String u_dailyExercise;

	public int getU_id() {
		return u_id;
	}

	public void setU_id(int u_id) {
		this.u_id = u_id;
	}

	public int getU_age() {
		return u_age;
	}

	public void setU_age(int u_age) {
		this.u_age = u_age;
	}

	public String getU_gender() {
		return u_gender;
	}

	public void setU_gender(String u_gender) {
		this.u_gender = u_gender;
	}

	public double getU_height() {
		return u_height;
	}

	public void setU_height(double u_height) {
		this.u_height = u_height;
	}

	public double getU_weight() {
		return u_weight;
	}

	public void setU_weight(double u_weight) {
		this.u_weight = u_weight;
	}

	public double getU_bmiIndex() {
		return u_bmiIndex;
	}

	public void setU_bmiIndex(double u_bmiIndex) {
		this.u_bmiIndex = u_bmiIndex;
	}

	public int getU_bpSystolic() {
		return u_bpSystolic;
	}

	public void setU_bpSystolic(int u_bpSystolic) {
		this.u_bpSystolic = u_bpSystolic;
	}

	public int getU_bpDiastolic() {
		return u_bpDiastolic;
	}

	public void setU_bpDiastolic(int u_bpDiastolic) {
		this.u_bpDiastolic = u_bpDiastolic;
	}

	public String getU_diabetic() {
		return u_diabetic;
	}

	public void setU_diabetic(String u_diabetic) {
		this.u_diabetic = u_diabetic;
	}

	public String getU_diabeticHistory() {
		return u_diabeticHistory;
	}

	public void setU_diabeticHistory(String u_diabeticHistory) {
		this.u_diabeticHistory = u_diabeticHistory;
	}

	public double getU_cholestrolLDL() {
		return u_cholestrolLDL;
	}

	public void setU_cholestrolLDL(double u_cholestrolLDL) {
		this.u_cholestrolLDL = u_cholestrolLDL;
	}

	public String getU_heartPatient() {
		return u_heartPatient;
	}

	public void setU_heartPatient(String u_heartPatient) {
		this.u_heartPatient = u_heartPatient;
	}

	public String getU_physicalActivity() {
		return u_physicalActivity;
	}

	public void setU_physicalActivity(String u_physicalActivity) {
		this.u_physicalActivity = u_physicalActivity;
	}

	public String getU_dailyExercise() {
		return u_dailyExercise;
	}

	public void setU_dailyExercise(String u_dailyExercise) {
		this.u_dailyExercise = u_dailyExercise;
	}
}
