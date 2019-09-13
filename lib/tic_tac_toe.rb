class TicTacToe

  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end

  WIN_COMBINATIONS = [
    [0,1,2],[3,4,5],[6,7,8],
    [0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]
  ]


  def display_board
   puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
   puts "-----------"
   puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
   puts "-----------"
   puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  def input_to_index(user_input)
   user_input.to_i - 1
  end
  
  def move(index, token)
    @board[index] = token
  end
  
  def position_taken?(index)
   if @board[index] == " " || @board[index] == "" || @board[index] = nil
      return false 
   else
      return true
    end
  end
  
  def valid_move?(index)
    if index.between?(0,8) && !position_taken?(index)
      return true
   end
  end
  
  def turn_count
   counter = 0
   @board.each do |position|
      if position == "X" || position == "O"
         counter += 1
      end
   end
   counter
  end
  
  def current_player
    if self.turn_count.even? == true
     return "X"
    else 
      return "O"
    end
  end
  
  # def turn 
  #   puts "Mark a position by entering in a number 1-9:"
  #   user_input = gets.strip
  #   user_integer = user_input.to_i
  #   self.input_to_index(user_integer)
  #   #self.valid_move?(user_integer)
  #   current_player = self.current_player
    
  #   @board[user_integer - 1] = current_player
  #   self.display_board
    
  #   # puts "Not a valid move. Try again:"
  #   # user_input = gets.strip
  # end
  # end
  
  def turn
   puts "Please enter 1-9:"
   user_input = gets.strip
   index = input_to_index(user_input)
   if valid_move?(index)
      
      turn
   end
   display_board
end
  
  
end