def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i - 1
end

def valid_move?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil) && (index >= 0 && index <= 8)
    true
  end
end

def move(board, index, value)
  board[index] = value
end

def turn(board)
  accept_move = 0
  until accept_turn == 1
    puts "Please enter 1-9:"
    user_input = gets.strip
    converted_input = input_to_index(user_input)
    if valid_move?(board, converted_input) == true
      accept_move = 1
    end
  end
end
