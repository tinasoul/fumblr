class FumblsController < ApplicationController
  # GET /fumbls
  # GET /fumbls.json
  def index
    @fumbls = Fumbl.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @fumbls }
    end
  end

  # GET /fumbls/1
  # GET /fumbls/1.json
  def show
    @fumbl = Fumbl.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @fumbl }
    end
  end

  # GET /fumbls/new
  # GET /fumbls/new.json
  def new
    @fumbl = Fumbl.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @fumbl }
    end
  end

  # GET /fumbls/1/edit
  def edit
    @fumbl = Fumbl.find(params[:id])
  end

  # POST /fumbls
  # POST /fumbls.json
  def create
    @fumbl = Fumbl.new(params[:fumbl])

    respond_to do |format|
      if @fumbl.save
        format.html { redirect_to @fumbl, notice: 'Fumbl was successfully created.' }
        format.json { render json: @fumbl, status: :created, location: @fumbl }
      else
        format.html { render action: "new" }
        format.json { render json: @fumbl.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /fumbls/1
  # PUT /fumbls/1.json
  def update
    @fumbl = Fumbl.find(params[:id])

    respond_to do |format|
      if @fumbl.update_attributes(params[:fumbl])
        format.html { redirect_to @fumbl, notice: 'Fumbl was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @fumbl.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fumbls/1
  # DELETE /fumbls/1.json
  def destroy
    @fumbl = Fumbl.find(params[:id])
    @fumbl.destroy

    respond_to do |format|
      format.html { redirect_to fumbls_url }
      format.json { head :no_content }
    end
  end
end
