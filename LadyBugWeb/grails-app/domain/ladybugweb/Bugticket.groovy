package ladybugweb

import java.util.Date;

class Bugticket {
	static belongsTo = [Associate,Status, Priority]
	Associate associate
	Status status
	Priority priority
	Role role
	String title
	String description
	Date dateCreated
	Date lastModifiedDate
	String requesterId
	
	String getRequester() {
		associate.get(requesterId).getFullName()
	}
	
	String getAssignee() {
		associate.fullName
	}

	String getRole() {
		role.get(associate.role.id).description
	}
	
	static transients = ['requester', 'assignee', 'role']
	

	static constraints = {
		 title(blank:true, nullable:true)
		description(blank:true, nullable:true)
		dateCreated(blank:true, nullable:true)
		lastModifiedDate(blank:true, nullable:true)
   }
}
