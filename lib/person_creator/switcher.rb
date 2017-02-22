module PersonCreator
  module Switcher

    def person_build subject
      send(subject).save
    end

    def create_user
      @person = User.new(obj_params)
    end

    def create_customer
      @person = Customer.new(obj_params)
    end
  end
end