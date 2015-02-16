class LinksController < ApplicationController

  def index
    getAllLinks
  end

  def task_links
    
  end

  def show
    @link = task.links.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @link }
    end
  end

  # GET /links/new
  # GET /links/new.json
  def new
    @link = task.links.build

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @link }
    end
  end

  # GET /links/1/edit
  def edit
    @link = task.links.find(params[:id])
  end

  # POST /links
  # POST /links.json
  def create
    @link = task.links.create(params[:link])

    respond_to do |format|
      if @link.save
        format.html { redirect_to [@link.task, @link], notice: 'Link was successfully created.' }
        format.json { render json: @link, status: :created, location: [@link.task, @link] }
      else
        format.html { render action: "new" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /links/1
  # PUT /links/1.json
  def update
    @link = task.links.find(params[:id])

    respond_to do |format|
      if @link.update_attributes(params[:link])
        format.html { redirect_to [@link.task, @link], notice: 'Link was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @link = task.link.find(params[:id])
    @link.destroy

    respond_to do |format|
      format.html { redirect_to task_links_url }
      format.json { head :no_content }
    end
  end

  private
  
  def task
    Task.find(params[:task_id])
  end

  def getAllLinks
    @links = task.links
   

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @links }
    end
  end
end
