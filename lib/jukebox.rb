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
  listener(songs)
end

def listener(songs)
  puts "Please enter a command:"
  response = gets.chomp
  case response.downcase
    when "help"
      help
    when "exit"
      exit_jukebox
    when "play"
      play(songs)
    when "list"
        "#{response}ing songs"
      list(songs)
    else
      "Type Help, Play, List, ot Exit"
  end 
end

def help
  puts "Type help, list, exit, or play"    
end

def play(songs)
  puts "Which song would you like to play?"
  response = gets.chomp
  a=*(1..songs.size)
  if a.include? response.to_i
    puts "Playing #{songs[response.to_i-1]}"
  elsif songs.include? response
    puts "Playing #{response}"
  else
    puts "Invalid input, please try again"
    listener(songs)
  end
end

def list(songs)
  songs.each do |song|
    puts song
  end
end

def exit_jukebox
  puts "Goodbye"
end

