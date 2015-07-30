class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
 
   protect_from_forgery with: :exception

  def show
    @idea = Idea.find_by(id: params['id'])
  end
  
  def new
  end
  
    def create  
      @idea =Idea.new 
      @idea.caption=params['caption']
      @idea.url=params['url']
      @idea.title=params['title']
      @idea.save
    
      redirect_to "/idea/#{@idea.id}"
      end
        
  
  
  
  def edit
    @idea = Idea.find_by(id: params['id'])
  end
  
  def update
    @idea = Idea.find_by(id:params['id'])
    @idea.url = params['url']
    @idea.caption = params['caption']
    @idea.title =params['title']
    @idea.save
    redirect_to "/idea/#{@idea.id}"
  end


  
  def delete
    @idea = Idea.find_by(id: params['id'])
   
    @idea.delete
    redirect_to "/idea"
  end



    def index
      @ideas = Idea.all
    end 




end
  
  
  
  

