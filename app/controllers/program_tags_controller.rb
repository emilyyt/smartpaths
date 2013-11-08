class ProgramTagsController < ApplicationController
  # GET /program_tags
  # GET /program_tags.json
  def index
    @program_tags = ProgramTag.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @program_tags }
    end
  end

  # GET /program_tags/1
  # GET /program_tags/1.json
  def show
    @program_tag = ProgramTag.find(params[:id])
    @tag_count = @program_tag.update_counter
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @program_tag }
    end
  end

  # GET /program_tags/new
  # GET /program_tags/new.json
  def new
    @program_tag = ProgramTag.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @program_tag }
    end
  end

  # GET /program_tags/1/edit
  def edit
    @program_tag = ProgramTag.find(params[:id])
  end

  # POST /program_tags
  # POST /program_tags.json
  def create
    @program_tag = ProgramTag.new(params[:program_tag])

    @user_vote = UserTag.create(:program_tag_id => @program_tag.id, :user_id => current_user.id)

    respond_to do |format|
      if @program_tag.save
        format.html { redirect_to @program_tag, notice: 'Program tag was successfully created.' }
        format.json { render json: @program_tag, status: :created, location: @program_tag }
      else
        format.html { render action: "new" }
        format.json { render json: @program_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /program_tags/1
  # PUT /program_tags/1.json
  def update
    @program_tag = ProgramTag.find(params[:id])

    respond_to do |format|
      if @program_tag.update_attributes(params[:program_tag])
        format.html { redirect_to @program_tag, notice: 'Program tag was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @program_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /program_tags/1
  # DELETE /program_tags/1.json
  def destroy
    @program_tag = ProgramTag.find(params[:id])
    @program_tag.destroy

    respond_to do |format|
      format.html { redirect_to program_tags_url }
      format.json { head :no_content }
    end
  end
end
