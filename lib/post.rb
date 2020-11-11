class Post
    attr_accessor :title, :author
    @@all = []

    def initialize(title)
    @title = title
    @@all << self
    end

    def self.all
        @@all 
    end

    # 1. See establish what artist this instance of Song ie "Thriller" is matched with in the artist @@all

    def author_name
        author.name if author
    end

    def post_count
        post_count = @@all.length

    end

end