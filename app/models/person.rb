class Person < ActiveRecord::Base
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }

  validates_attachment :photo, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }


  validates :name,  :presence => true
  validates :email, :presence => true,
            :length => { :minimum => 6 }
  validates :phone, :length =>{ :minimum =>10, :maximum =>10}



end
