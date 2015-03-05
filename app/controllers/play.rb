post '/deck/awesome' do
 erb :'deck/awesome'
 
end


post '/deck/:cc/cards/:dd' do

@now_deck_id = params[:cc]
@now_card_id = params[:dd]
puts "THERE I AM HERE"
c = Deck.find(@now_deck_id)
d = c.cards.find(@now_card_id)

 if d.answer == "#{params[:answer]}"+"\n"
 	
   erb  :'deck/awesome'
 	puts "CORRECT"

 	 #guess.correct +1
 	 #guess ID add 1 row
 	 #guess.

 	else

 	puts "WRONG"
 	erb  :'deck/awesome'

 end


end