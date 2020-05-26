class Store < ActiveRecord::Base
  has_many :employees
  validates :name, presence: true ,length: {minimum: 3}
  validates :annual_revenue, presence: true ,numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validate :must_carry_mens_or_womens_apparel

  def must_carry_mens_or_womens_apparel
    unless (mens_apparel == true || womens_apparel == true)
      errors.add(:mens_apparel, "Store must carry mens and/or womens apparel")
    end
  end
end
