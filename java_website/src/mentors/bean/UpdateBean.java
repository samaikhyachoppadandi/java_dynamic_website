package mentors.bean;

public class UpdateBean {
	private int age;
	private long fee;
	private long phone;
	
		public String getSid()
		{
			return sid;
		}

	public void setSid(String sid2) {
		this.sid = sid2;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

	public String getSname() {
		return sname;
	}

	public void setSname(String sname) {
		this.sname = sname;
	}

	public String getFather_name() {
		return father_name;
	}

	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}

	public String getFather_occupation() {
		return father_occupation;
	}

	public void setFather_occupation(String father_occupation) {
		this.father_occupation = father_occupation;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

		private String sid, sname,email,father_name,father_occupation,address,course;

	public  void setEmail(String email)
	{
		this.email=email;
	}
	
	public String getEmail()
	{
		return email;
	}

	public long getFee() {
		return fee;
	}

	public void setFee(long fee) {
		this.fee = fee;
	}
}
