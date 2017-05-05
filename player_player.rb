 
class Player_player

 attr_accessor :moves  # use for unit testing 

  def initialize(moves) 
  
    @moves = ["t1", "t2", "t3", "m1", "m2", "m3", "b1", "b2", "b3"] 

    end 
# Method to return random open position 

 
   def get_move(game_board) 

 
  



 
    # create an array of indexes for the open positions 

 
     position = game_board.each_index.select{ |index| game_board[index] == "" } 

 
     


 
  # get a location from @moves using a random index 

 
     move = @moves[position.sample] 

  

 
   end 