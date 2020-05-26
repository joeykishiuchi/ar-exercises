class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than: 40, less_than: 200}
  validates :store_id, presence: true

  before_create :set_password

  private 
    def set_password
      new_password = ""
      8.times{ random << (('0'..'9').to_a + ('a'..'z').to_a + ('A'..'Z').to_a)[rand(62)] }
      self.password = new_password
    end
end
