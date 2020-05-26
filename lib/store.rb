class Store < ActiveRecord::Base
  has_many :employees
  validates :name ,length: {minimum: 3}
  validates :annual_revenue ,numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_mens_or_womens_apparel

  before_destroy :stop_destruction_for_stores_with_employees

  def must_carry_mens_or_womens_apparel
    unless (mens_apparel == true || womens_apparel == true)
      errors.add(:mens_apparel, "Store must carry mens and/or womens apparel")
    end
  end
  private 
    def stop_destruction_for_stores_with_employees 
      if self.employees.count > 0
        false
      end
    end
end
