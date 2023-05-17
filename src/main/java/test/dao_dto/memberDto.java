package test.dao_dto;

public class memberDto {

	private String id;
	private String name;
	private String pwd;
	
	public memberDto() {
		// TODO Auto-generated constructor stub
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	};
	
	public memberDto(String id, String name, String pwd) {
		this.id = id;
		this.name = name;
		this.pwd = pwd;
	}
}
