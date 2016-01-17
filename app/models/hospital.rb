class Hospital < ActiveRecord::Base
  has_many :doctors

  def self.search(search, id)
    if search
      where(['name LIKE ?', "%#{search}%"])
    else
      Hospital.all
    end
  end
end
