class ChatroomsController < ApplicationController
    require "booking"
    def show 
        @chatroom = Chatroom.find(params[:id])
    end
    

end
