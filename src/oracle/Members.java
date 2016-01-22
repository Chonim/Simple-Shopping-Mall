package oracle;

public class Members {
	private String id;
	private String pw;
	private String name;
	private int  phone;
	private String adress;
	private int rank;
	
	public Members() {
		
	}
	
	public Members(String id, String pw, String name, int phone, String adress, int rank) {
		super();
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.phone = phone;
		this.adress = adress;
		this.rank = rank;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getPhone() {
		return phone;
	}

	public void setPhone(int phone) {
		this.phone = phone;
	}

	public String getAdress() {
		return adress;
	}

	public void setAdress(String adress) {
		this.adress = adress;
	}

	public int getRank() {
		return rank;
	}

	public void setRank(int rank) {
		this.rank = rank;
	}

	@Override
	public String toString() {
		return "members [id=" + id + ", pw=" + pw + ", name=" + name + ", phone=" + phone + ", adress=" + adress
				+ ", rank=" + rank + "]";
	}
	
	
}
