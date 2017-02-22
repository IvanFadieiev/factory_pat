class User < Person
  has_one :address, class_name: 'Address', foreign_key: :person_id
  accepts_nested_attributes_for :address
end