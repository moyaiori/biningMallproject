package kr.or.kosta.shopping.topping.domain;

public class Topping {
	private int toppingId;
	private String name;
	private String picture;
	private String description;
	private String country;
	private int calorie;
	private int price;
	
	public Topping(){}
	public Topping(int toppingId, String name, String picture, String description, String country, int calorie,
			int price) {
		super();
		this.toppingId = toppingId;
		this.name = name;
		this.picture = picture;
		this.description = description;
		this.country = country;
		this.calorie = calorie;
		this.price = price;
	}
	public int getToppingId() {
		return toppingId;
	}
	public void setToppingId(int toppingId) {
		this.toppingId = toppingId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public int getCalorie() {
		return calorie;
	}
	public void setCalorie(int calorie) {
		this.calorie = calorie;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Topping [toppingId=" + toppingId + ", name=" + name + ", picture=" + picture + ", description="
				+ description + ", country=" + country + ", calorie=" + calorie + ", price=" + price + "]";
	}
}
