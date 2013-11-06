class UserTagsController < ApplicationController
  # GET /user_tags
  # GET /user_tags.json
  def index
    @user_tags = UserTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_tags }
    end
  end

  # GET /user_tags/1
  # GET /user_tags/1.json
  def show
    @user_tag = UserTag.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_tag }
    end
  end

  # GET /user_tags/new
  # GET /user_tags/new.json
  def new
    @user_tag = UserTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_tag }
    end
  end

  # GET /user_tags/1/edit
  def edit
    @user_tag = UserTag.find(params[:id])
  end

  # POST /user_tags
  # POST /user_tags.json
  def create
    @user_tag = UserTag.new(params[:user_tag])

    respond_to do |format|
      if @user_tag.save
        format.html { redirect_to @user_tag, notice: 'User tag was successfully created.' }
        format.json { render json: @user_tag, status: :created, location: @user_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @user_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_tags/1
  # PUT /user_tags/1.json
  def update
    @user_tag = UserTag.find(params[:id])

    respond_to do |format|
      if @user_tag.update_attributes(params[:user_tag])
        format.html { redirect_to @user_tag, notice: 'User tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_tags/1
  # DELETE /user_tags/1.json
  def destroy
    @user_tag = UserTag.find(params[:id])
    @user_tag.destroy

    respond_to do |format|
      format.html { redirect_to user_tags_url }
      format.json { head :no_content }
    end
  end
end
