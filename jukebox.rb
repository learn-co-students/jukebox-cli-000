songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def run(songs)
  loop do
    print "Please enter a command:\n"
    input = gets.chomp
      if input.upcase == "EXIT"
        exit_jukebox
        break
      elsif input.upcase == "HELP"
        help
      elsif input.upcase == "LIST"
        list(songs)
      elsif input.upcase == "PLAY"
        play(songs)
      else 
        print "Invalid input, please try again"
      end
    end
end

def exit_jukebox
  print "Goodbye"
end

def help
  print "?=.*help)(?=.*list)(?=.*play)(?=.*exit).+"
end

def list(songs)
  songs.each_with_index { |song| puts "#{song}\n" }
end

def play(songs)
  songs.each_with_index { |song| puts "#{song}\n" }
  newInput = gets.chomp
    if newInput.to_i > 0 && newInput.to_i < 10
      puts "#{songs[newInput.to_i]} is playing"
    elsif newInput.to_i > 10
      print "Invalid input, please try again"
    elsif newInput.class == String
      puts "Now playing: #{songs}"
    end
end
