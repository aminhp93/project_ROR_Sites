class DemoController < ApplicationController
   
  def index
  	# render(:template => 'demo/hello')
  end

  def hello
  	# render('index')
    @id = params['id']
    @page = params[:page] 
  end

  def other_hello
  	redirect_to(:controller => 'demo', :action => 'index')
  end

  def lynda
  	redirect_to("http://lynda.com")
  end

  def text_helpers
  end
  
end
