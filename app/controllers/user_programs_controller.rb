class UserProgramsController < ApplicationController
  # GET /user_programs
  # GET /user_programs.json
  def index
    @user_programs = UserProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @user_programs }
    end
  end

  # GET /user_programs/1
  # GET /user_programs/1.json
  def show
    @user_program = UserProgram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_program }
    end
  end

  # GET /user_programs/new
  # GET /user_programs/new.json
  def new
    @user_program = UserProgram.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_program }
    end
  end

  # GET /user_programs/1/edit
  def edit
    @user_program = UserProgram.find(params[:id])
  end

  # POST /user_programs
  # POST /user_programs.json
  def create
    @user_program = UserProgram.new(params[:user_program])

    respond_to do |format|
      if @user_program.save
        format.html { redirect_to @user_program, notice: 'User program was successfully created.' }
        format.json { render json: @user_program, status: :created, location: @user_program }
      else
        format.html { render action: "new" }
        format.json { render json: @user_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_programs/1
  # PUT /user_programs/1.json
  def update
    @user_program = UserProgram.find(params[:id])

    respond_to do |format|
      if @user_program.update_attributes(params[:user_program])
        format.html { redirect_to @user_program, notice: 'User program was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_programs/1
  # DELETE /user_programs/1.json
  def destroy
    @user_program = UserProgram.find(params[:id])
    @user_program.destroy

    respond_to do |format|
      format.html { redirect_to user_programs_url }
      format.json { head :no_content }
    end
  end
end
