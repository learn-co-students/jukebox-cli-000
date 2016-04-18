require 'pry'
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

def help
  puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program\n"
end

def play(songs) 
  puts "Please enter a song name or number:"
  length = songs.length
  input = gets.chomp
  i = 0
  x = "Invalid input, please try again"
  if input.to_i.between?(1, 9)
    x = "Playing #{songs[input.to_i-1]}"
  elsif 
    
    while i < length
      if input == songs[i]
        x = "Playing #{songs[i]}"
      end
      i+=1
    end
  end
  puts "#{x}"
end

def list(songs)
  i = 0

  while i < songs.length
    puts "#{i+1}. #{songs[i]}\n"
    i+=1
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"

  user = gets.chomp
  while user != "exit"
    
    if user == "help"
      help
    elsif user == "list"
      list(songs)

    elsif user == "play"
      play(songs)
    end
    user = gets.chomp

  end

    if user = "exit"
      exit_jukebox
    end

end




#play(songs)
