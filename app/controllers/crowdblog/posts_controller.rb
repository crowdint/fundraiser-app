module Crowdblog
  class PostsController < ApplicationController
    layout "fundraiser/rewards"

    def index
      @posts = Post.published_and_ordered
    end
  end
end
