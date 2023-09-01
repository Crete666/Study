package inheritance;

public class ClothingInfo extends ProductInfo {
	private char size;		// 옷 사이즈 (L/M/S)
	private String color;	// 색상
	
	public ClothingInfo() {
		
	}

	public char getSize() {
		return size;
	}

	public void setSize(char size) {
		this.size = size;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}
	
	
}
