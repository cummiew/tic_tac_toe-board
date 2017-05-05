require 'sinatra'
# require_relative "board.rb"
# require_relative "console.rb"
# require_relative "human_console.rb"
# require_relative "game_board.rb"
# require_relative "position.rb"
# require_relative "sequential.rb"

enable :sessions
	get'/' do

	erb :p1_play
end

post '/player_1' do 				 # post is tellimg player to put their name.
	p1_name = params[:p1_name]       # the white p1_name is the current_player name.
		redirect '/p2_play?p1_name =' + p1_name
end

get '/p2_play' do 
	p1_name = params[:p1_name]

	erb :p2_play, locals: {p1_name: p1_name}
			# p2_play is the name of the erb file called.
end

post '/player_2' do 
										# p1_name = params[:p1_name]
    session[:p1_name] = params[:p1_name]
	session[:p2_name] = params[:p2_name]
	session[:ttt_board] = TTT_Board.new
			# "#{session[:p1_name]} & #{session[:p2_name]}"
			# when using the interpreator '#' use double quotes, "".
				
		redirect '/game_ttt_board'
end

get '/game_ttt_board' do 
		
	erb :game_ttt_board, locals: {ttt_board: session[:ttt_board].ttt_board}
			# accessing ttt_board with ttt_board.rb to go outside the 
			# class Board to here.	
end


post '/ttt_board' do

	get_move = params[:choice].to_i

		session[:ttt_board].update_ttt_board(get_move, '')

			if current_player = p1_name

				redirect '/game_ttt_board'
			end
end







