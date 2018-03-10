class League < ActiveRecord::Base

  belongs_to :assoc,      class_name: 'Association', foreign_key: 'association_id'
  has_many :teams

end