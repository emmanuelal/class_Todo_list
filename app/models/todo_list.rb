class TodoList < ActiveRecord::Base
	default_scope -> {order( 'list_due_date ASC')}
	belongs_to :user
	has_many :todo_items, dependent: :destroy 

end
