require 'array_sort'

describe ArraySort do
  describe ".bubble_sort" do

    before :all do
      ARRAY_SIZE  = 5
      UNSORTED    = 0.upto(ARRAY_SIZE).to_a.shuffle
      SORTED_ASC  = 0.upto(ARRAY_SIZE).to_a
      SORTED_DESC = ARRAY_SIZE.downto(0).to_a
    end

    context "given an unsorted numeric array" do

      context "and given no options" do
        it "should sort the array values in ascending order" do
          array = ArraySort.bubble_sort(UNSORTED)
          expect(array).to eql SORTED_ASC
        end
      end

      context "given option: { order: :asc }" do
        it "should sort the array values in ascending order" do
          array = ArraySort.bubble_sort(UNSORTED, { order: :asc })
          expect(array).to eql SORTED_ASC
        end  
      end

      context "given option: { order: :desc }" do
        it "should sort the input in descending order" do
          array = ArraySort.bubble_sort(UNSORTED, { order: :desc })
          expect(array).to eql SORTED_DESC
        end
      end
    end

    context "given an empty array" do
      it "should return an empty array" do
        array = ArraySort.bubble_sort([])
        expect(array).to eql []
      end
    end

    context "given an nil input" do
      it "should raise error" do
        expect { ArraySort.bubble_sort(nil) }.to raise_error(TypeError)
      end
    end

    context "given a non-numeric array" do
      it "should raise error" do
        fruits = ['apple', 'orange', 'pear']
        expect { ArraySort.bubble_sort(fruits) }.to raise_error(TypeError)
      end
    end
  end
end
