class ArraySort

  def self.bubble_sort(arr, order: :asc)
    raise TypeError if arr.nil?
    raise TypeError unless arr.all? {|i| i.is_a? Integer }
    return arr if arr.empty?

    comparator = (order == :asc ? :< : :>)

    loop do
      swapped = false

      for i in 0...arr.length-1
        if (arr[i+1].send(comparator, arr[i]))
          arr[i+1], arr[i] = arr[i], arr[i+1]
          swapped = true
        end
      end

      break if swapped == false
    end

    arr
  end
end