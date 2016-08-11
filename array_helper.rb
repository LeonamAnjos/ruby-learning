module ArrayHelper
  def ArrayHelper.make_flat(array)
    flat = []
    array.each do |element|
      if element.is_a? Array
        flat += make_flat element
      else
        flat << element
      end
    end
    flat
  end
end

p ArrayHelper.make_flat [[1,2,[3]],4]
p ArrayHelper.make_flat [1, [2,[3, 4], 5], 6, 7, [8], [9,10,[11]],12, [13]]
p ArrayHelper.make_flat [1, 2, [3], 4, 5]
