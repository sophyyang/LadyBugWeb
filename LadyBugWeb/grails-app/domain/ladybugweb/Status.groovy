package ladybugweb

class Status {
	BigInteger id
	BigInteger categoryId
	Integer iOrder
	String description

	static constaints = {

	}

	static mapping = {
		table 'status'
		version false
		id column:'id'
		categoryId column: 'category_Id'
		iOrder column:'i_order'
		description column: 'description'
	}

	public String toString()  {
		return description
	}
}