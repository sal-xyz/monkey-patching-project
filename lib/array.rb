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

    def my_count(val)
        count = 0
        self.each do |ele|
            if ele == val
                count += 1
            end
        end
        return count
    end

    def my_index(val)
        self.each_with_index do |ele, i|
            if ele == val
                return i
            end
        end
        return nil
    end

    def my_uniq
        ans = []
        self.each do |ele|
            if ans.include?(ele) == false
                ans << ele
            end
        end
        return ans
    end

    def my_transpose
        ans = Array.new(self.length) {Array.new(self.length,0)}

        i = 0
        while i < self.length do
            k = 0
            while k < self[i].length do
                ans[k][i] = self[i][k]
                k += 1
            end
            i += 1
        end

        return ans
    end

end
