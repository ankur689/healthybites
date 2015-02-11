
package com.cmpe239.healthybites;
import java.io.Serializable;


public class HealthProfile implements Serializable
{

	private static final long serialVersionUID = 1L;

	//General Params
	int age;
//	Date dateOfBirth;
	String gender;
	float height;	//In centimeters
	float weight;	//In Pounds (Lbs)
	
	//BMI Parameters
	float bmiIndex;
	String bmiRating;
	
	//Blood Pressure
	int bpSystolic;		//Upper(120)
	int bpDiastolic;	//Lower(80)
	
	//Diabetes
	boolean diabetic;
	boolean diabeticHistory;
	
	//Cholestrol & Heart
	int cholestrolLDL;
	boolean heartPatient;
	
	//Additional Info
	int physicalActivity;
	int dailyExercise;
	
	public HealthProfile()
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
		this.diabeticHistory=false;
		
		//Cholestrol & Heart
		this.cholestrolLDL=120;
		this.heartPatient=false;
		
		/*
		 * List of possible options for Physical Activity
		 * Sedentary = 1
		 * Moderate = 2
		 * Active = 3
		 */
		this.physicalActivity=0;
		
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
	
	//Getters
	public int getAge()					{return this.age;}
//	public Date getDateOfBirth()		{return dateOfBirth;}
	public String getGender()			{return this.gender;}
	public float getHeight()			{return this.height;}
	public float getWeight()			{return this.weight;}

	public int getBpSystolic()			{return this.bpSystolic;}
	public int getBpDiastolic()			{return this.bpDiastolic;}

	public boolean getDiabetic()		{return this.diabetic;}
	public boolean getDiabeticHistory()	{return this.diabeticHistory;}

	public int getCholestrolLDL()		{return this.cholestrolLDL;}
	public boolean getHeartPatient()	{return this.heartPatient;}
	
	public int getPhysicalActivity()	{return this.physicalActivity;}
	public int getDailyExercise()		{return this.dailyExercise;}
	
	//Setters
	public void setAge(int age)						{this.age=age;}
	public void setGender(String gender)			{this.gender=gender;}
	public void setHeight(float height)				{this.height=height;}
	public void setWeight(float weight)				{this.weight=weight;}

	public void setBpSystolic(int bpSystolic)		{this.bpSystolic=bpSystolic;}
	public void setBpDiastolic(int bpDiastolic)		{this.bpDiastolic=bpDiastolic;}

	public void setDiabetic(boolean diabetic)	{this.diabetic=diabetic;}
	public void setDiabeticHistory(boolean diabeticHistory)		{this.diabeticHistory=diabeticHistory;}

	public void setCholestrolLDL(int cholestrolLDL)				{this.cholestrolLDL=cholestrolLDL;}
	public void setHeartPatient(boolean heartPatient)			{this.heartPatient=heartPatient;}
	
	public void setPhysicalActivity(int physicalActivity)		{this.physicalActivity=physicalActivity;}
	public void setDailyExercise(int dailyExercise)				{this.dailyExercise=dailyExercise;}
	
//	public void setDateOfBirth(String dateOfBirth)
//	{
//		try
//		{
//			this.dateOfBirth = new SimpleDateFormat("yyyy/MM/dd").parse(dateOfBirth);
//		}
//		catch (ParseException e)	{e.printStackTrace();}
//		
//		//Set the age variable after subtracting the dateOfBirth with current date
//		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
//		Date today = new Date();
//		
//		this.age = today.getYear() - this.dateOfBirth.getYear();
//	}
	
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