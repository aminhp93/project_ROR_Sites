class DemoController < ApplicationController
   layout 'application'
   
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

  def make_errors
    # My guesses for the 2 most comon errors:
    # render(:text => "text" # syntax error
    # render(:text => @something.upcase) # undefined method
    # render(:text => "1" + 1) # cant't convert type

  end

  def logging 
    logger.debug("This is debug.")
    logger.info("This is info.")
    logger.warn("This is warn.")
    logger.error("This is error.")
    logger.fatal("This is fatal.")
    render(:text => 'Logged!')

  end
  
end
