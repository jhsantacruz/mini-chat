class Comment < ActiveRecord::Base
	validates :body, presence: true, length: {maximum: 2000}
  belongs_to :user

  def self.remove_excessive!
  	if all.count > 100
      order('created_at ASC').limit(all.count - 50).destroy_all
    end
  end
end
