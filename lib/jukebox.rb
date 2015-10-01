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

def list(songs)
  songs.each.with_index(1){|song, num| puts "#{num}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
end

def play(songs)
  help
  puts "Please enter a command:"
  selection = gets.chomp
    if songs.include?(selection)
      puts "Playing #{selection}"
    elsif songs.each.with_index(1){|b,i| i == selection.to_i} && (1..songs.count).include?(selection.to_i)
      puts "Playing #{songs[selection.to_i - 1]}"
    elsif selection.downcase.strip == "help"
      help
      run(songs)
    elsif selection.downcase.strip == "list"
      list(songs)
      run(songs)
    elsif selection.downcase.strip == "exit"
      exit_jukebox
    else 
      puts "Invalid input, please try again"
    end
end

def run(songs)
  play(songs)
end