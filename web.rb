require 'sinatra'
require 'pony'


post '/contact' do 

Pony.mail(
	:name => params[:contactName],
	:mail => params[:contactEmail],
	:body => params[:contactMessage],
	:to => 'raul.mtz2996@gmail.com',
	:subject => params[:contactName] + " has contacted you",
	:body => params[:contactMessage],
	:port => '587',
	:via => :smtp,
	:via_options => { 
	    :address              => 'smtp.gmail.com', 
	    :port                 => '587', 
	    :enable_starttls_auto => true, 
	    :user_name            => 'raul.mtz2996', 
	    :password             => 'Rm20317695', 
	    :authentication       => :plain, 
	    :domain               => 'localhost.localdomain'
  })

erb :index

end


get '/' do

	erb :index
	
end
