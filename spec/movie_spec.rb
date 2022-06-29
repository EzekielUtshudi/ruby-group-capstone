require_relative '../classes/movie'

describe Movie do
  context 'Test movie class' do
    movie = Movie.new 'Cars', '2021/05/03', true, true

    it 'movie is an instance of Movie class ' do 
      expect(movie).to be_instance_of Movie
    end
    it 'Displays the correct silent status' do
      expect(movie.silent).to eq true
    end
    it 'Displays the correct date' do expect(movie.publish_date).to eq '2021/05/03'
    end
    it 'Displays archived status' do expect(movie.archived).to eq(true)
    end
  end
end
