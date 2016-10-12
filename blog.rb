class Blog
    
    @@blog_count = 0
    
    def initialize
        @@blog_count +=1
    end
    
    def self.count
        @@blog_count
    end
end
    
class Post < Blog
    
    def title=(title)
    @title = title
    end
    
    def title
        @title
    end
    
    def content=(content)
    @content = content
    end
    
    def content
        @content
    end
    
    def date=(date)
    @date = date
    end
    
    def date
      @date
    end
    
    def author=(author)
        @author = author
    end
    
    def author
       @author
    end
    
end

puts "do you want to create another blog post? [Yes/No]?"
answer = gets.chomp

case answer
    when "yes" 
    puts "what is the title?"
    blog_title = gets.chomp.Capitilize 
    puts "what is the publish date?"
    blog_date = gets
    puts "who is the author?"
    blog_author = gets
    puts "what is the content?"
    blog_content = gets
    when "no"
    puts "Thank You!"
end

answer = ["blog_title", "blog_date", "blog_author", "blog_content"]

 my_title = Blog.new
 my_title.title = blog_title
 blog_title = my_title.title
 my_content = Blog.new 
 my_content.content = blog_content
 blog_content = my_content.content
 my_date = Blog.new
 my_date.date = blog_date
 blog_date = my_date.date
 my_author = Blog.new
 my_author.author = blog_author
 blog_author = my_author.author

 puts "The new blog post is called #{blog_title}, it is published #{blog_date} by #{blog_author} and it is as follows #{blog_content}."
    

