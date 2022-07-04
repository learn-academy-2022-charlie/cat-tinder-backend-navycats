require 'rails_helper'

RSpec.describe "Cats", type: :request do
  describe "GET /index" do
    it" gets a list of dogs" do
      Dog.create(
        name: 'Pumyra',
        age: 24 ,
        enjoys: 'Stalking',
        image: 'https://media.istockphoto.com/photos/crouching-mountain-lion-picture-id898582532?b=1&k=20&m=898582532&s=170667a&w=0&h=R468xO9E4TmZu7pKO2DXP97NtWuhcz6D6_FlwG26s6U='
      ) 
      get '/cats'
      cat = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(cat.length).to eq 1
    end
  end
end
describe "POST/create"do
  it "creates a cat" do
    cat_params = {
      cat: {
        name: 'Claudus',
        age: 60,
        enjoys: 'Mentoring, giving guidance.',
        image: https://media.istockphoto.com/photos/lion-king-of-the-jungle-picture-id1326607248?b=1&k=20&m=1326607248&s=170667a&w=0&h=5wd3US3jyYs3RqaObnMPztaCSkqPpeTFPOI7lGdCDF8=
      }
    }
    
    post '/cats', params: cat_params
    expect(response).to have_http_status(200)
    cat = Cat.first
    expect(cat.name).to eq 'Claudus'
  end
end