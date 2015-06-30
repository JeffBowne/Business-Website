require 'sinatra'
require 'mandrill'

get '/' do
  ''
end

get '/cover' do
  erb :about
end

get '/about' do
  erb :about
end

get '/guitars' do
  erb :guitars
end

get '/questions' do
  erb :questions
  puts params.inspect

  email_thanks_feedback [{:email => params[:email], :name => params[:name]}], params[:message]
  "Thanks for your submission!"
end

get '/testimonials' do
   erb :testimonials
end

def email_thanks_feedback recipients, message
  msg = Mandrill::API.new
  
  body = {
    :subject => "Thanks for your submission!",
    :from_name => "Chris Duane",
    :text => "We appreciate your submission, #{recipients[0][:name]}.  Your message was as follows:\n\n#{message}",  
    :to => recipients,
    :from_email => "cam@nycda.com"
  }
  msg.messages.send body
end