package ladybugweb

import java.util.Date;

class History {
	Integer id
	Integer historyID
	Integer ticketID
	Integer userID
	Integer statusID
	Integer priorityID
	Date dateCreated
	Date lastModified
	
 
   static constraints = {
	   id(blank:true, nullable:true)
	   historyID(blank:true, nullable:true)
	   ticketID(blank:true, nullable:true)
	   userID(blank:true, nullable:true)
	   statusID(blank:true, nullable:true)
	   priorityID(blank:true, nullable:true)
	   dateCreated(blank:true, nullable:true)
	   lastModified(blank:true, nullable:true)
	   
		
	}
   
}
