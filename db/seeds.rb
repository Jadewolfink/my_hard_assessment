

  User.create(username: "admin", password:"123")
  new_deck = Deck.create(title: "SuperWOW", user_id:1)
  somefile = File.open("flashcard_samples.txt", "r")
    

 @array = []
 
    while !somefile.eof?
    somefile.readlines.each do |line|
     
       if line != "\n"
       @array << line
       end
      end
    end

  until @array.empty?
    answer=@array.pop
    question=@array.pop
    new_deck.cards<< Card.create(question: question, answer: answer)
  end

