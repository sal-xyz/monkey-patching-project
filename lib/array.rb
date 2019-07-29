# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return self.length > 0 ? self.max - self.min : nil
    end
    
    def average
        if self.length == 0
            return nil
        else
            count = 0
            self.each do |ele|
                count += ele
            end
        return count.to_f/self.length
        end
    end

    def median
        arr = self.sort
        index = arr.length/2
        if self == []
            return nil
        elsif arr.length.even?
            return (arr[index-1].to_f + arr[index].to_f)/2
        else
            return arr[index]
        end
    end

    def counts
        ans = Hash.new(0)

        self.each do |ele|
            ans[ele] += 1
        end

        return ans
    end


end
