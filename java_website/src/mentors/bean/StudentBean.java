package mentors.bean;

public class StudentBean {
		private String name,email,fname,foccupy,address,course;
		private int age;
		private long phone;
		public StudentBean(String name,int age,String email,long phone,String fname,String foccupy,String address,String course)
		{
			this.name=name;
			this.age=age;
			this.email=email;
			this.phone=phone;
			this.fname=fname;
			this.foccupy=foccupy;
			this.address=address;
			this.course=course;
			
		}
		public String getName()
		{
			return name;
		}
		public String getEmail() {
			return email;
		}
		public String getFname() {
			return fname;
		}
		public String getFoccupy() {
			return foccupy;
		}
		public String getAddress() {
			return address;
		}
		public String getCourse() {
			return course;
		}
		public int getAge() {
			return age;
		}
		public long getPhone() {
			return phone;
		}
		public void setEmail(String email)
		{
			this.email=email;
		}

		
}

