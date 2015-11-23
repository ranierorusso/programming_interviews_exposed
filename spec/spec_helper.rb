RSpec.configure do |config|

  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate
end

class Array
  def sorted_asc?
    for i in 0...self.length-1 do
      return false if self[i] > self[i+1]
    end

    true
  end

  def sorted_desc?
    for i in 0...self.length-1 do
      return false if self[i] < self[i+1]
    end
    
    true
  end

  def only_integers?
    self.all? {|i| i.is_a?(Integer) }
  end
end
