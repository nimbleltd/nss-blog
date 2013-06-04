class PostsController < ApplicationController

    def index
        #render text: 'Hello'
        @posts = Post.all
    end
end