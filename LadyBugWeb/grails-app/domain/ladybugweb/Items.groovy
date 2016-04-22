package ladybugweb

import java.util.Date;

class Items {
	static belongTo = Category
	Category category
	
	String description
	Integer iOrder
	Date dateCreated
	Date lastModifiedDate 
	
	
	static constraints = {
		description(blank:true, nullable:true)
		iOrder(blank:true, nullable:true)
		dateCreated(blank:true, nullable:true)
		lastModifiedDate(blank:true, nullable:true)
	}
	public String toString() {
		return description
	}
	

	

 
}
