package mentors.bean;

public class Employee {
	
	private String userId, passWord;
	
	 public  Employee(String userId, String passWord){
		 this.userId=userId;
		 this.passWord=passWord;
	 }

	public String getUserId() {
		return userId;
	}

	 
	public String getPassWord() {
		return passWord;
	}

	 

}
