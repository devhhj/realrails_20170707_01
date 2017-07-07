require 'sinatra'

get '/' do
    "<!DOCTYPE html><html><head><title>VIEW</title></head><body><h1>Hello</h1></body></html>"
end

get'/view' do
    erb :index
end

get '/likelion/:name' do
    result = params[:name].to_i
    x3 = result*result*result
    "Hello, Likelion, @x3"
end

get '/cube/:num' do
    num = params[:num].to_i
    (num ** 3).to_s
end