require 'sinatra'

class App < Sinatra::Base
  set :default_content_type, 'application/json'
  get '/hello' do
    '<h2>Hello <em>World</em>!</h2>'
  end
  get '/dice' do 
    dice_roll = rand(1..6)
    {roll: dice_roll}.to_json
  end
  get '/add/:num1/:num2' do
    sum = params[:num1].to_i + params[:num2].to_i
    {result: sum }.to_json
  end
  
end

run App
