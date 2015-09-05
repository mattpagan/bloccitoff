class Item < ActiveRecord::Base
  belongs_to :user

  validates :name, length: { maximum: 40 }

  default_scope { order('updated_at ASC') }

end
