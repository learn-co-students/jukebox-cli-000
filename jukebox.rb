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

# Your code here

def run(songs)
  a = ""
  until a == "exit"
    puts "/Please enter a command:/"
    a = gets.chomp.downcase
    if a == "exit"
      exit_jukebox()
    elsif a == "list"
      list(songs)
    elsif  a == "play"
      play(songs)
    elsif a == "help"
      help()
    else
      puts "invalid command"
    end
  end
end

def help()
  puts "I accept the following commands"
  puts "help"
  puts "list"
  puts "play"
  puts "exit"
end

def list(songs)
  songs.each.with_index do |x,i|
    puts "#{i+1} #{x}"
  end
end

def exit_jukebox()
  puts "Goodbye/"
end

def play(songs)
  puts "Please enter song number or song name"
  song = gets.chomp
  matched = false
  songs.each.with_index do |x,i|
    if (song == x || song.to_i == i+1)
      puts "#{x}"
      matched = true
    end
  end
  if matched == false
    puts "/Invalid input, please try again/"
  end
end




