package model;


public class Register {
	private String fName,dob,gender,address,city,state,uname,regpwd;

	public Register() {
		// TODO Auto-generated constructor stub
	}

	public String getregpwd() {
		return regpwd;
	}

	public void setregpwd(String regpwd) {
		this.regpwd = regpwd;
	}

	public String getuname() {
		return uname;
	}

	public void setuname(String uname) {
		this.uname = uname;
	}

	public String getfName() {
		return fName;
	}

	public void setfName(String fName) {
		this.fName = fName;
	}


		public String getdob() {
			return dob;
		}

		public void setdob(String dob) {
			this.dob = dob;
		}

		public String getgender() {
			return gender;
		}

		public void setgender(String gender) {
			this.gender = gender;
		}

		public String getaddress() {
			return address;
		}

		public void setaddress(String address) {
			this.address = address;
		}
        public String getcity(){
        	return city;
        }
		public void setcity(String city) {
			this.city = city;
		}
		public String getstate(){
			return state;
		}
		public void setstate(String state){
			this.state = state;
		}


}
