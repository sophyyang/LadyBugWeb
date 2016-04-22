package ladybugweb

class Priority {
	BigInteger id
	BigInteger categoryId
	Integer iOrder
	String description

	static constaints = {

	}

	static mapping = {
		table 'priority'
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