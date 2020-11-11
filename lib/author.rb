class Author
    attr_accessor :name
        
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self
    end

    def posts
        all_posts = []
        Post.all.map do |posts|
            posts == self
            all_posts << posts
        end
        all_posts
     end


     def add_post(title_name)
        added_post = Post.all.detect {|name| name == title_name}
        added_post.author = self
    end

    def add_post_by_title(title)
        new_post = Post.new(title)
        new_post.author = self
    end

    def self.post_count
        Post.all.count
    end



end