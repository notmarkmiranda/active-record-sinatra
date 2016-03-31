class Film < ActiveRecord::Base
  belongs_to :genre
  belongs_to :director

  def self.total_sales
    self.sum("box_office_sales").to_i
  end

  def self.average_sales
    self.average("box_office_sales").to_i
  end
end
