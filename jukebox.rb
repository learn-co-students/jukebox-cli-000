require "pry"

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
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def list(songs)
	songs.each_with_index do |song, number|
		puts "#{number+1}. #{song}"
	end
end

def exit_jukebox
	puts "Goodbye"
end

def play(songs)
    puts "Select your song by number or name:"
    input = gets.chomp
	if input.to_i.between?(1, 9)
	   	puts "#{songs[input.to_i-1]}"
    elsif songs.include?(input)
    	puts "#{input}"
   	else
   		puts "Invalid input, please try again"
    end
end

def run(songs)
	puts "Please enter a command:"
	input = gets.chomp.strip.downcase
	until input == "exit"
		case input
		when "help"
			help
			puts "What next?"
			input = gets.chomp.strip.downcase
		when "list"
			list(songs)
			puts "What next?"
			input = gets.chomp.strip.downcase
		when "play"
			play(songs)
			puts "What next?"
			input = gets.chomp.strip.downcase
		else
			puts "Invalid input, please try again"
		end
	end
	exit_jukebox
end






