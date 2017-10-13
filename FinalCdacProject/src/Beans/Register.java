package Beans;

public class Register
{
	private String name,address,email,vehicle_no,pass;
	private long mob_no;
	
	public Register() {
		// TODO Auto-generated constructor stub
	}
	
	
	public Register(String name, String address, String email,
			String vehicle_no, String pass, long mob_no) {
		super();
		this.name = name;
		this.address = address;
		this.email = email;
		this.vehicle_no = vehicle_no;
		this.pass = pass;
		this.mob_no = mob_no;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getVehicle_no() {
		return vehicle_no;
	}
	public void setVehicle_no(String vehicle_no) {
		this.vehicle_no = vehicle_no;
	}
	public long getMob_no() {
		return mob_no;
	}
	public void setMob_no(long mob_no) {
		this.mob_no = mob_no;
	}


	@Override
	public String toString() {
		return "Register [name=" + name + ", address=" + address + ", email="
				+ email + ", vehicle_no=" + vehicle_no + ", pass=" + pass
				+ ", mob_no=" + mob_no + "]";
	}
	
	
	
}
