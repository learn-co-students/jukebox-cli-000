#!/usr/bin/env ruby

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



def prompt_user
  puts "Please enter a command:"
  user_command = gets.chomp.downcase
end

def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
  songs.each_with_index {|song, index| puts "#{index+1}. #{song}"}
end

def exit_jukebox
  puts "Goodbye"
  #abort("Goodbye")
  #Note: the abort message will be written to STDERR as opposed to puts which will write to STDOUT.
end

def play(songs)
  list(songs)
  puts "Enter the song you would like to hear:"
  user_command = gets.chomp.downcase

  if user_command.length == 1
    if user_command.to_i < 1 || user_command.to_i > songs.size
      puts "Invalid input, please try again"
      return
    else
      puts songs[user_command.to_i+1]
    end
  else

    song_found = false
    songs.each do |song|
      if song.downcase == user_command.downcase
        song_found = true
        puts song
      end
      if song_found == false
        puts "Invalid input, please try again"
        return
      end
    end
  end
end


def run(songs)


user_command = prompt_user

case user_command
  when "help"
    help
  when "list"
    list(songs)
  when "exit"
    exit_jukebox
  when "play"
    play(songs)
end
end

    
# if user_command == "help"
#   help
# end