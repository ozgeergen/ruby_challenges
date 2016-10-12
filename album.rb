class Album
    
    @@all_albums = []
    @@album_count = 0
    
    def self.all
        @@all_albums
    end
    
    def self.add(thing)
        @@all_albums << thing
        @@album_count += 1
    end
    
    def self.publish
        @@all_albums.each do |entry|
            puts "Title:\n #{entry.title}"
            puts "Artist:\n #{entry.artist}"
            puts "Publish Date:\n #{entry.created_at}"
    end
        
end
  
end    
    
    
class Entry < Album   
    
    def self.create
    entry = new
    puts "Title of the album:"
    entry.title = gets.chomp
    puts "Artist of the album"
    entry.artist = gets.chomp
    entry.created_at = Time.now
    entry.save
    puts "Do you want to create another entry? [Y/N]"
    create if gets.chomp.downcase == 'y'
    end
    
    def title=(title)
        @title = title
    end
    
    def title
        @title = title    
    end
    
    def created_at=(time)
        @created_at = time
    end
    
    def created_at
        @created_at
    end
    
    def artist=(artist)
        @artist = artist
    end
    
    def artist
        @artist
    end
    
    def save
    Entry.add(self)
    end
    
end
            
    
Entry.create
all_albums = Entry.all
puts all_albums.inspect
album_count = Entry.all
puts album_count.inspect
Entry.publish    
