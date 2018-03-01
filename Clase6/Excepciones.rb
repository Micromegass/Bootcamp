

#
# def what
#   puts "cool"
#
#   begin
#     1 / 0
#   rescue ZeroDivisionError => e
#     "not possible"
#   end
#
# end
#
# what()


class PermissionDeniedError < StandardError
  attr_reader :action

  def initialize(message, action)
    # Call the parent's constructor to set the message
    super(message)

    # Store the action in an instance variable
    @action = action
  end
end

# Cuando alguien trate de borrar algo sin permiso podrías
# hacer algo así:
raise PermissionDeniedError.new("PermissionDeniedError", :delete)
