class FilmFile < Sinatra::Base
  get '/films' do
    @films = Film.all
    erb :films_index
  end

  get '/genres' do
    @genres = Genre.all
    erb :genres_index
  end

  get '/directors/:id' do |id|
    @director = Director.find(id)
    erb :director
  end

  post '/genres' do
    genre = Genre.create(params[:genre])
    if genre.save
      status 200
      body "Genre Created"
    else
      status 400
      body "#{genre.errors.full_messages.join(", ")}"
    end
  end
end
