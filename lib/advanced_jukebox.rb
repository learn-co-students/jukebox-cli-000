#Here is the song hash you will be working with. Each key is a song name and each value is the location of it's mp3 file.
#make sure to edit the value of each key to replace < path to this directory >
#with the correct path to this directory on your computer

my_songs = {
  "Go Go GO" => 'https://www.nitrous.io/home/nitrous/code/labs/jukebox-cli/audio/Emerald-Park/01.mp3',
  "LiberTeens" => 'https://www.nitrous.io/home/nitrous/code/labs/jukebox-cli/audio/Emerald-Park/02.mp3',
  "Hamburg" =>  'https://www.nitrous.io/home/nitrous/code/labs/jukebox-cli/audio/Emerald-Park/03.mp3',
  "Guiding Light" => 'https://www.nitrous.io/home/nitrous/code/labs/jukebox-cli/audio/Emerald-Park/04.mp3',
  "Wolf" => 'https://www.nitrous.io/home/nitrous/code/labs/jukebox-cli/audio/Emerald-Park/05.mp3',
  "Blue" => 'https://www.nitrous.io/home/nitrous/code/labs/jukebox-cli/audio/Emerald-Park/06.mp3',
  "Graduation Failed" => 'https://www.nitrous.io/home/nitrous/code/labs/jukebox-cli/audio/Emerald-Park/07.mp3'
}

def help
  puts "I accept the following commands:
  - help : displays this help message
  - list : displays a list of songs you can play
  - play : lets you choose a song to play
  - exit : exits this program"
end

def list(my_songs)
  puts my_songs.keys
end

def play(my_songs)
  puts "Please enter a song name:"
  song_name = gets.chomp
  if !my_songs.has_key?(song_name)
    puts "Invalid input, please try again"
  else
    puts "Now playing #{song_name}"
    system 'open' << my_songs[song_name]
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(my_songs)
  help

  command = ""
  while command
    puts "Please enter a command:"
    command = gets.downcase.chomp
    case command
    when 'help'
      help
      when 'play'
      list(my_songs)
      play(my_songs)
      when 'list'
      list(my_songs)
    when 'exit'
      exit_jukebox
      break
    else
      'help'
    end
  end
end
