enable :sessions

post '/signup' do
  p "=====signup======"
  @user = User.new(params)
  if @user.save
    p "=============succcesfully register=============="
    redirect "/"
  else
    p "================failed to register============="
    redirect "/"
  end
end

post '/login' do
  @user = User.authenticate(params[:username], params[:password])
  if @user
    session[:user_id] = @user.id
    p "================login succcesfully============"
    redirect '/dashboard'
  else
    p "login failed"
    redirect '/'
  end
end

before '/dashboard' do
  authenticate
end

get '/login' do
  erb :dashboard
end




private
def authenticate
  if session[:user_id]
    true
  else
    redirect '/'
  end
end