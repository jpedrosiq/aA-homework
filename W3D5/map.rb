class Map

    def initialize
        @my_map = []
    end

    def set(key, value)
        @my_map << [key, value] if @my_map.empty?
        @my_map.each do |pairs|
            if pairs[0] == key
                pairs[1] = value
            else
                @my_map << [key, value]
            end
        end
    end

    def get(key)
        @my_map.each {|pairs| return pairs[1] if pairs[0] == key}
    end

    def delete(key)
        @my_map.each {|pairs| @my_map.delete(pairs) if pairs[0] == key}

    end

    def show
        puts @my_map
    end

end