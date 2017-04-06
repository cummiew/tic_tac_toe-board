require 'sinatra'
require_relative "board.rb"

enable :sessions
	get'/' do

	erb :game_board 
end

post '/player_1' do
	p1_name = params[:p1_name]
		redirect '/player_2?p1_name=' + p1_name
end

get '/player_2' do 
	p1_name = params[:p1_name]

	erb :p2_name, locals: {p1_name: p1_name}
			# player_2 is the name of the erb file called.
end

post '/player_2' do 
										# p1_name = params[:p1_name]
    session[:p1_name] = params[:p1_name]
	session[:p2_name] = params[:p2_name]
	session[:board] = Board.new
			# "#{session[:p1_name]} & #{session[:p2_name]}"
			# when using the interpreator '#' use double quotes, "".
				
		redirect '/game_board'
end

get '/game_board' do 
		

	erb :ame_board, locals: {board: session[:board].ttt_board}
			# accessing ttt_board with board.rbto go outside the 
			# class Board to here.	
end

post '/move' do 

	move = params[:pick].to_i

end





