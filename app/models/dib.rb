class Dib < ActiveRecord::Base
  belongs_to :user, :class_name => User
  belongs_to :post, :class_name => Post
  
  STATUSES = [STATUS_NEW = 'new', STATUS_DELETED = 'deleted', STATUS_FINISHED = 'finished']

  # 43200 seconds = 12 hours
  @@timeSpan = 43200
  cattr_reader :timeSpan
  
  validates_presence_of :creator_id
  validates_presence_of :post_id
  validates :status, inclusion: {in: STATUSES}


  # to make sure we don't expose it
  def ip
    ''
  end
end
