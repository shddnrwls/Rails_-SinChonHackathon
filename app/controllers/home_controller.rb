require 'nokogiri'
require 'rest_client'   # get & post
require 'open-uri'      # get

class HomeController < ApplicationController
  def index
  end
  def recommend
     #@result = Nokogiri::HTML(open("http://program.tving.com/tvn/cvsmix/11/Board/View?b_seq=31&page=1&p_size=5"))
    @test = Recommend.find(params[:recommend_id])
    @uri = @test.content
    @result = Nokogiri::HTML(open(@uri))
    @aa = @result.css('div.ContentView').text
  end
  def new
    
  end
  def write
    @new_post=Post2.new
     @new_post.content = params[:content]
     @new_post.title = params[:title]
     @new_post.image=params[:image]
     
     @new_post.save
     redirect_to "/show/#{@new_post.id}"
  end
  def show
    @one_post = Post2.find(params[:post2_id])
  
  end
  def my_recipe
    @every_post=Post2.all
  end
  
end
