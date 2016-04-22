package ladybugweb

import java.util.ArrayList;
import java.util.Date;

class Associate {
	static belongTo = [Role]
	Role role
	
	String firstName
	String lastName
	String emailAdd
	Date dateCreated
	Date lastModifiedDate

	String getFullName() {
		firstName + ' ' + lastName
	}

	
	ArrayList getRoleDescriptionList() {
		Role t = new  Role()
		def allRow=t.findAll()
		def ArrayList  out = new ArrayList()
		def int i = 0
		allRow.each {
			if (it.categoryId==2) {
			out[i]=it.description
			i++
			}
		}
		t.categoryId = 2
		println(out)
		return out
	}
	
	static transients = ['fullName', 'roleDescriptionList']


	static constraints = {
		firstName(blank:true, nullable:true)
		lastName(blank:true, nullable:true)
		emailAdd(email:true, nullable:true)
		dateCreated(blank:true, nullable:true)
		lastModifiedDate(blank:true, nullable:true)
	}
	
	public String toString()  {
		return fullName
	}
}
