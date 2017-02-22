module PersonCreator
  class Params

    def initialize params
      @params = params
    end

    def obj_params
      classes = Person.descendants.map{|c| c.name.downcase}
      classes.map do |a|
        @obj_params = send("set_#{a}") if !@params[a.to_sym].nil?
      end
      @obj_params
    end

    private
    def set_customer
      @params.require(:customer).permit(:name, address_attributes: [:id, :street])
    end

    def set_user
      @params.require(:user).permit(:name, address_attributes: [:id, :street])
    end
  end
end