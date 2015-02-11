package com.cmpe239.healthybites;

public class customerHealth {
	
	
	
	int age;
//	Date dateOfBirth;
	String gender;
	float height;	//In centimeters
	float weight;
	boolean diabetic;
	boolean heartPatient;

//BMI Parameters
	float bmiIndex;
	String bmiRating;

//Blood Pressure
	int bpSystolic;		//Upper(120)
	int bpDiastolic;	//Lower(80)
	int cholestrolLDL;
	int dailyExercise;
	int healthRating;

	
	//Additional Info
	int physicalExercise;

	public customerHealth()
	{
		this.age=0;
		this.gender=null;
		this.height=0;
		this.weight=0;
		this.bmiIndex=0;
		this.bmiRating="Normal Weight";
		
		//Blood Pressure
		this.bpSystolic=120;
		this.bpDiastolic=80;
		
		//Diabetes
		this.diabetic=false;
		
		
		//Cholestrol & Heart
		this.cholestrolLDL=120;
		this.heartPatient=false;
		
		/*
		 * List of possible options for Physical Activity
		 * Sedentary = 1
		 * Moderate = 2
		 * Active = 3
		 */
		this.physicalExercise=0;
		
		/*
		 * List of possible options for Daily Exercise
		 * Never = 1
		 * Often = 2
		 * Regularly = 3
		 */
		this.dailyExercise=0;
		
		//Compute the BMI parameters
//		computeBMIParams();
	}
	
	
	
	

	public int getAge() {
		return age;
	}


	public void setAge(int age) {
		this.age = age;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public float getHeight() {
		return height;
	}


	public void setHeight(float height) {
		this.height = height;
	}


	public float getWeight() {
		return weight;
	}


	public void setWeight(float weight) {
		this.weight = weight;
	}


	public boolean isDiabetic() {
		return diabetic;
	}


	public void setDiabetic(boolean diabetic) {
		this.diabetic = diabetic;
	}


	public boolean isHeartPatient() {
		return heartPatient;
	}


	public void setHeartPatient(boolean heartPatient) {
		this.heartPatient = heartPatient;
	}


	public float getBmiIndex() {
		return bmiIndex;
	}


	public void setBmiIndex(float bmiIndex) {
		this.bmiIndex = bmiIndex;
	}


	public String getBmiRating() {
		return bmiRating;
	}


	public void setBmiRating(String bmiRating) {
		this.bmiRating = bmiRating;
	}


	public int getBpSystolic() {
		return bpSystolic;
	}


	public void setBpSystolic(int bpSystolic) {
		this.bpSystolic = bpSystolic;
	}


	public int getBpDiastolic() {
		return bpDiastolic;
	}


	public void setBpDiastolic(int bpDiastolic) {
		this.bpDiastolic = bpDiastolic;
	}


	public int getCholestrolLDL() {
		return cholestrolLDL;
	}


	public void setCholestrolLDL(int cholestrolLDL) {
		this.cholestrolLDL = cholestrolLDL;
	}


	public int getDailyExercise() {
		return dailyExercise;
	}


	public void setDailyExercise(int dailyExercise) {
		this.dailyExercise = dailyExercise;
	}


	public int getHealthRating() {
		return healthRating;
	}


	public void setHealthRating(int healthRating) {
		this.healthRating = healthRating;
	}


	public int getPhysicalExercise() {
		return physicalExercise;
	}


	public void setPhysicalExercise(int physicalExercise) {
		this.physicalExercise = physicalExercise;
	}
	
	public boolean computeBMIParams()
	{
		if(Float.compare(getWeightInKilo(),0)==0 || Float.compare(getHeightInMeters(),0)==0)
		{
			System.out.println("Required parameters not set to compute BMI!");
			return false;
		}
		
		/*
		 * BMI Chart Indicator
		 * 18.5 or less		Underweight
		 * 18.5-24.9		Normal Weight
		 * 25.0-25.9		Overweight
		 * 30.0-39.9		Obese
		 * 40 or greater	Extremely Obese
		 */
		this.bmiIndex=(getWeightInKilo()/(getHeightInMeters()*getHeightInMeters()));
		
		if(Float.compare(this.bmiIndex, (float) 18.5)<0)
			this.bmiRating = "Underweight";
		else if(Float.compare(this.bmiIndex, (float) 18.5)>=0 && Float.compare(this.bmiIndex, (float) 24.9)<=0)
			this.bmiRating = "Normal Weight";
		else if(Float.compare(this.bmiIndex, (float) 25.0)>=0 && Float.compare(this.bmiIndex, (float) 25.9)<=0)
			this.bmiRating = "Overweight";
		else if(Float.compare(this.bmiIndex, (float) 30.0)>=0 && Float.compare(this.bmiIndex, (float) 30.9)<=0)
			this.bmiRating = "Obese";
		else if(Float.compare(this.bmiIndex, (float) 40)>=0)
			this.bmiRating = "Extremely Obese";
		
		return true;
	}

	private float getHeightInMeters()	{return (this.height/100);}
	private float getWeightInKilo()		{return (float) (this.weight*0.453592);}
}
	
	
	

