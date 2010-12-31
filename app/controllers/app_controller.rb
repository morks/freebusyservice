class AppController < ApplicationController
  def main
    
  end

  def login
    require "login.rb"
    islogin = checklogin
    
    if not ( islogin.eql?(1) )
     redirect_to :action => "main"
     puts "login failed"
    else
      puts "login success"
      redirect_to :action => "main"
    end
    
  end

  def register
    require "encode.rb"
    @mytoken = gettoken
    puts @mytoken
  end

end
