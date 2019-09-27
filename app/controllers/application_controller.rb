require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :super_hero
  end
  
#  get "/teams/:id" do
#    @team = Team.find(params[:id])
#    
#    erb :team
#  end
  
  post '/teams' do
    @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
    params[:team][:members].each do |member_data|
      member = Member.new(member_data)
      member.team = @team
      member.save
    end
    
    erb :team
  end
  
end
