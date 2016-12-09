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
  puts "I accept the following commands:\n- help : displays this help message\n- list : displays a list of songs you can play\n- play : lets you choose a song to play\n- exit : exits this program"
end

def list(array_of_songs)
  array_of_songs.each_with_index do |song, index|
    puts "#{index+1}. #{song}"
  end
end

def play(array_of_songs)
  puts "Please enter a song name or number:"
  user_response = gets.chomp
  if array_of_songs.include?(user_response)
    puts "Playing #{user_response}"
  elsif user_response.to_i > 0 && user_response.to_i <= array_of_songs.count
    puts "Playing #{array_of_songs[user_response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(array_of_songs)
  help
  user_command = ""
  while user_command != "exit"
    puts "Please enter a command:"
    user_command = gets.chomp 
    if user_command == "list"
      list(array_of_songs)
    elsif user_command == "play"
      play(array_of_songs)
    elsif user_command == "help"
      help
    elsif user_command == "exit"
      exit_jukebox
      break
    else 
      puts "Please enter a command:"
      user_command = gets.chomp
    end
  end
end
