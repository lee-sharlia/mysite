class PostsController < ApplicationController
    before_action :find_post, only: [:show, :edit, :update, :destroy]

    def index
    end
    
    def new
        @post = Post.new
    end

    def create
        @post = Post.new post_params
            if @post.save
                redirect_to @post, notice: "Your portofolio item was successfully saved"
            else
                render 'new', notice: "Unable to save portfolio item- bummer!"
            end
    end

    def show
    end
    
    def edit
    end
    
    def update
        if @post.update  post_params
            redirect_to @post, notice: "Post updated!"
        else
            render 'edit'
        end
        
    end
    
    def destroy
        if @post.destroy
            redirect_to posts_path, notice: "Your post was deleted!"
        else
            render 'edit', notice: "Unable to delete post!"
        end
    end


    def find_post
        @post = Post.find(params[:id])
    end

private
    def post_params
        params.require(:post).permit(:title, :content)
    end

end

