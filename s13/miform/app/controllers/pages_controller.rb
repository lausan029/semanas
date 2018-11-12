class PagesController < ApplicationController
  def envio
  end

  def recibo
  	a = params[:a].to_i
  	b = params[:b].to_i
  	@suma = a+b
  end

	def generator
	end

  def my
  	@page = Page.find(params[:id])
  	@title = @page.title
  	@h1 = @page.upv 
  	@h1 = @page.content 
  	#@title = params[:title]
  	#@h1 = params[:h1]
  	render layout: false
  end

  def save_page
  	@page = Page.create!(title: params[:title], upv: params[:h1], content: params[:content])
  	redirect_to pages_my_path(id: @page.id)
  end
end
