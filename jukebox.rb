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
  command = ""
  until command == "exit"
    puts "Please enter a command:"
    command = gets.chomp
    case command
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    when "exit"
      exit_jukebox
    end
  end
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end 

def exit_jukebox
  puts "Goodbye"
end

def play(songs)
  value = gets.chomp
  if value.to_i == 0
    songs.each {|song| if song == value.to_s then puts song end}
  else 
    if value.to_i < 1 || value.to_i >9 then puts "Invalid input, please try again"
    else puts "Playing #{songs[value.to_i-1]}"
    end
  end
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end