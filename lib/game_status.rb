
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6],
  ]
  
  def won?(board)
   if   board[0] == " " && board[1] == " " && board[2] == " " && board[3] == " " && board[4] == " " && board[5] == " " && board[6] == " " && board[7] == " " && board[8] == " "
     return false
   end
   
    WIN_COMBINATIONS.each do |combo|
      a = combo[0]
      b = combo[1]
      c = combo[2]
      if board[a] == board[b] && board[b] == board[c] && board[a] != " "
        return combo
      end
    end
    false
    end
    
    def full?(board)
      if won?(board) == false && board[0] != " " && board[1] != " " && board[2] != " " && board[3] != " " && board[4] != " " && board[5] != " " && board[6] != " " && board[7] != " " && board[8] != " "
        return true 
   end
 end
 
 def draw?(board)
   if won?(board) == false && board[0] != " " && board[1] != " " && board[2] != " " && board[3] != " " && board[4] != " " && board[5] != " " && board[6] != " " && board[7] != " " && board[8] != " "
        return true 
   end
 end
 
 def over?(board)
   if won?(board) != false && won?(board) != nil
     return true
     elsif draw?(board) == true
     return true
   end
 end
<<<<<<< HEAD

def winner(board)
  x = won?(board)
 if x == false
     return nil
else 
  board[won?(board)[0]]
=======
 
 def turn_count(board)
  x = 0
  board.each do |space|
    if space == "X"
      x += 1 
    elsif space == "O"
      x += 1
    end
  end
  return x
end

def winner(board)
  x = turn_count(board)
  y = x % 2
 if won?(board) == false
     return nil
elsif y == 0 
    return "O"
  elsif y == 1 
    return "X"
>>>>>>> 13ec35113f2b1822d0aa3b5485c48f786c4bfed0
  end
end
  
     