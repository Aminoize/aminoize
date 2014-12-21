class Food < ActiveRecord::Base

  def self.text_search(query)
    if query.present?
      where("name ilike :q or content ilike :q", q: "%#{query}%")
    else
      where(nil)
    end
  end

end
