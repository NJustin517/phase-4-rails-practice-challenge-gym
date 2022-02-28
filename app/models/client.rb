class Client < ApplicationRecord
  has_many :memberships, dependent: :destroy
  has_many :gyms, through: :memberships

  def sum
    sum = 0
    self.memberships.each { |m| sum += m.charge}
    sum
  end
end
