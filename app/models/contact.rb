class Contact < ActiveRecord::Base
  attr_accessible :email, :name, :phno, :firstname, :lastname
  validates_presence_of :firstname

  def name 
	[firstname, lastname].join " " 
  end

  def self.by_letter(letter) 
	where("lastname LIKE ?", "#{letter}%").order(:lastname) 
  end 
end
