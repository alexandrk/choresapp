class ChildChoresController < ApplicationController

    before_filter :authenticate_user!, except: [:index]

  # GET /child_chores
  # GET /child_chores.json
  def index
    @child_chores = ChildChore.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @child_chores }
    end
  end

  # GET /child_chores/1
  # GET /child_chores/1.json
  def show
    @child_chore = ChildChore.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @child_chore }
    end
  end

  # GET /child_chores/new
  # GET /child_chores/new.json
  def new
    @child_chore = current_user.child_chores.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @child_chore }
    end
  end

  # GET /child_chores/1/edit
  def edit
    @child_chore = ChildChore.find(params[:id])
  end

  # POST /child_chores
  # POST /child_chores.json
  def create
    @child_chore = current_user.child_chores.new(params[:child_chore])

    respond_to do |format|
      if @child_chore.save
        format.html { redirect_to @child_chore, notice: 'Child chore was successfully created.' }
        format.json { render json: @child_chore, status: :created, location: @child_chore }
      else
        format.html { render action: "new" }
        format.json { render json: @child_chore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /child_chores/1
  # PUT /child_chores/1.json
  def update
    @child_chore = current_user.child_chores.find(params[:id])

    respond_to do |format|
      if @child_chore.update_attributes(params[:child_chore])
        format.html { redirect_to @child_chore, notice: 'Child chore was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @child_chore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /child_chores/1
  # DELETE /child_chores/1.json
  def destroy
    @child_chore = current_user.child_chores_url.find(params[:id])
    @child_chore.destroy

    respond_to do |format|
      format.html { redirect_to child_chores_url }
      format.json { head :no_content }
    end
  end
end
