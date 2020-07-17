class Post


    attr_accessor :title
    @@all = []

    def initialize(title)
        @title = title
        @@all << self
    end

    def author=(author)
        @author = author
    end

    def author
        @author
    end
    
    def author_name
        self.author == nil ? self.author : self.author.name
    end

    def self.all
        @@all
    end
end