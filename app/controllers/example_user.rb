class User
    attr_accessor :login, :Password
  
    def initialize(attributes = {})
      @login  = attributes[:login]
      @Password = attributes[:Password]
    end
end