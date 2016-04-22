package ladybugweb

class Role {
	BigInteger id
	BigInteger categoryId
	Integer iOrder
	String description

	static constaints = {

	}

	static mapping = {
		table 'role'
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