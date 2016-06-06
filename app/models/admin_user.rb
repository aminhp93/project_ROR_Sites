class AdminUser < ActiveRecord::Base
	# To configure a different table name:
	# self.table_name = "admin_users"


	# attr_accessor :first_name

	# def last_name
	# 	@last_name
	# end
	
	# def last_name=(value)
	# 	@last_name =value
	# end

	has_and_belongs_to_many :pages
	has_many :section_edits
	has_many :sections, :through => :section_edits
end
