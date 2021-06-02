class BlogsController < ApplicationController

  # GET: /blogs
  get "/blogs" do
    @blogs = Blog.all
    erb :"/blogs/index.html"
  end

  # GET: /blogs/new
  get "/blogs/new" do
    erb :"/blogs/new.html"
  end

  # POST: /blogs
  post "/blogs" do
    blog = Blog.new(params)
    blog.save
    # binding.pry
    redirect "/blogs"
  end

  # GET: /blogs/5
  get "/blogs/:id" do
    @blog = Blog.find(params[:id])
    erb :"/blogs/show.html"
  end

  # GET: /blogs/5/edit
  get "/blogs/:id/edit" do
    @blog = Blog.find(params[:id])
    erb :"/blogs/edit.html"
  end

  # PATCH: /blogs/5
  patch "/blogs/:id" do
    blog = Blog.find(params[:id])
    blog.update(params[:blog])
    redirect "/blogs/#{blog.id}"
  end

  # DELETE: /blogs/5/delete
  delete "/blogs/:id/delete" do
    @blog = Blog.find(params[:id])
    redirect "/blogs"
  end
end
