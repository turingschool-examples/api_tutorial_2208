class ErrorBook
  attr_reader :error_message,
              :status,
              :code

  def initialize(error_message, status, code)
    @error_message  = error_message
    @status         = status
    @code           = code
  end
end