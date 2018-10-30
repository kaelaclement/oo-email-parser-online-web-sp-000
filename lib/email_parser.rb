require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails = @emails.split(/( |,)/)
    @emails.delete_if {|s| s == nil || s == "" || s == " " || s == ","}
    binding.pry
  end

end
