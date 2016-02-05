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
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def play(array)
  puts "Please enter a song name or number:"
  song_name = gets.chomp
  if array.include?(song_name) || array[song_name.to_i]
    puts "Playing #{song_name}"
  else
    puts "Invalid input, please try again"
  end
end

def list(array)
  array.each_with_index { |val,index| puts "#{index + 1}. #{val}" }
end

def run(array)
  while command == ""
    puts "Please enter a command:"
    command = gets.downcase.chomp
    case command
    when 'help'
      help
      when 'play'
      list(array)
      play(array)
      when 'list'
      list(array)
    when 'exit'
      exit_jukebox
      break
    else
      'help'
    end
  end
end


def exit_jukebox
  puts "Goodbye"
end
