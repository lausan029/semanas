class PagesController < ApplicationController
  def setv
  	session[:value] = 1
  end

  def getv
  	session[:value] += 1
  	@value = session[:value]
  end
end
