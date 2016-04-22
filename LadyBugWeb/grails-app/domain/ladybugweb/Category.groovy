package ladybugweb

class Category {
	static hasMany = [items:Items]
 	String description
	
	public String toString() {
		return description
	}
}
