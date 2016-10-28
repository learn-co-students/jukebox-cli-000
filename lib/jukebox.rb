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

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end 
