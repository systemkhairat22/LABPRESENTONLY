package modalclass;

public class admin {
	
	private int adminid;
	private String admin_icnum;
	private String add_name;
	private int add_age;
	private String add_email;
	private String add_password;
	private String add_phonenum;
	private int supervisorid ;
	
	public admin(int adminid, String admin_icnum, String add_name, int add_age, String add_email, String add_password,
			String add_phonenum, int supervisorid) {
		super();
		this.adminid = adminid;
		this.admin_icnum = admin_icnum;
		this.add_name = add_name;
		this.add_age = add_age;
		this.add_email = add_email;
		this.add_password = add_password;
		this.add_phonenum = add_phonenum;
		this.supervisorid = supervisorid;
	}
	
	public admin(String admin_icnum, String add_name, int add_age, String add_email, String add_password,
			String add_phonenum, int supervisorid) {
		super();
		this.admin_icnum = admin_icnum;
		this.add_name = add_name;
		this.add_age = add_age;
		this.add_email = add_email;
		this.add_password = add_password;
		this.add_phonenum = add_phonenum;
		this.supervisorid = supervisorid;
	}
	
	public admin() {
		
	}

	public int getAdminid() {
		return adminid;
	}

	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}

	public String getAdmin_icnum() {
		return admin_icnum;
	}

	public void setAdmin_icnum(String admin_icnum) {
		this.admin_icnum = admin_icnum;
	}

	public String getAdd_name() {
		return add_name;
	}

	public void setAdd_name(String add_name) {
		this.add_name = add_name;
	}

	public int getAdd_age() {
		return add_age;
	}

	public void setAdd_age(int add_age) {
		this.add_age = add_age;
	}

	public String getAdd_email() {
		return add_email;
	}

	public void setAdd_email(String add_email) {
		this.add_email = add_email;
	}

	public String getAdd_password() {
		return add_password;
	}

	public void setAdd_password(String add_password) {
		this.add_password = add_password;
	}

	public String getAdd_phonenum() {
		return add_phonenum;
	}

	public void setAdd_phonenum(String add_phonenum) {
		this.add_phonenum = add_phonenum;
	}

	public int getSupervisorid() {
		return supervisorid;
	}

	public void setSupervisorid(int supervisorid) {
		this.supervisorid = supervisorid;
	}

	

}
