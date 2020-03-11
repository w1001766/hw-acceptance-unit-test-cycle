require 'rails_helper'

describe 'Home' do
    it 'should list all movies' do
        
        Movie.all.each do |movie|
            expect(page).to have_content('#{movie.title}')
        end
    end
end

describe 'find_similar' do
    it 'has a director' do
#         mov1 = double('Movie')
# 		mov1.stub(:title).and_return('mov1')
# 		mov1.stub(:director).and_return('movie director')
# 		mov2 = double('Movie')
# 		mov2.stub(:title).and_return('mov1')
# 		mov2.stub(:director).and_return('movie director')
# 		puts '------------------------------------'
# 		puts Movie.similar(mov1.director)
# 		puts '------------------------------------'
        mov1 = Movie.create(title: 'mov1', director: 'movie director')
        mov2 = Movie.create(title: 'mov2', director: 'movie director')
        expect(Movie.similar(mov1.director)).to eq([mov1,mov2])
    end   
    
    it 'should return to home page' do
        mov1 = Movie.create(title: 'mov1')
        expect(Movie.similar(mov1.director)).to be nil
    end
end