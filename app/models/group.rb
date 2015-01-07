class Group < ActiveRecord::Base
  validates :title, :presence => {:message =>"不能空白"}
  # validates_presence_of :title, :message => "請填寫title"

  has_many :posts ,dependent: :destroy
  has_many :group_users
  has_many :members, :through => :group_users, :source => :user
  
  belongs_to :owner, :class_name =>"User", :foreign_key => :user_id


  def editable_by?(user)
    user && user == owner
  end
  scope :recent, -> { order("updated_at DESC") }
end
