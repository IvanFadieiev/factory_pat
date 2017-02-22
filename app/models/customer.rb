class Customer < Person
  has_many :address, class_name: 'Address', foreign_key: :person_id
  accepts_nested_attributes_for :address
end