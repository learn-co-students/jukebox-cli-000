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
def help 
  puts "help, list, play, exit"
end

def list(songs)
  songs.each { |s| puts s }
end

def play(songs)
  which_song = gets.chomp
  if which_song.to_i > 0 && which_song.to_i <= songs.size then
    song = songs[which_song.to_i - 1]
  elsif songs.include? which_song then
    song = which_song
  else
    puts "Invalid input, please try again"
	return nil
  end

  puts song
end

def exit_jukebox
  puts 'Goodbye!'
end

def run(songs)
  loop do
    puts "Please enter a command:"
	cmd = gets.chomp
	if cmd == 'help' then
	  help
	elsif cmd == 'list' then
      list(songs)
    elsif cmd == 'play' then
	  play(songs)
    elsif cmd == 'exit' then
      exit_jukebox
	  break
    end	  
  end
end