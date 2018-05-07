class EventElementsController < ApplicationController
  before_action :set_event_element, only: [:show, :edit, :update, :destroy]

  # GET /event_elements
  # GET /event_elements.json
  def index
    @event_elements = EventElement.all
  end

  # GET /event_elements/1
  # GET /event_elements/1.json
  def show
  end

  # GET /event_elements/new
  def new
    @event_element = EventElement.new
  end

  # GET /event_elements/1/edit
  def edit
  end

  # POST /event_elements
  # POST /event_elements.json
  def create
    @event_element = EventElement.new(event_element_params)

    respond_to do |format|
      if @event_element.save
        format.html { redirect_to @event_element, notice: 'Event element was successfully created.' }
        format.json { render :show, status: :created, location: @event_element }
      else
        format.html { render :new }
        format.json { render json: @event_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /event_elements/1
  # PATCH/PUT /event_elements/1.json
  def update
    respond_to do |format|
      if @event_element.update(event_element_params)
        format.html { redirect_to @event_element, notice: 'Event element was successfully updated.' }
        format.json { render :show, status: :ok, location: @event_element }
      else
        format.html { render :edit }
        format.json { render json: @event_element.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /event_elements/1
  # DELETE /event_elements/1.json
  def destroy
    @event_element.destroy
    respond_to do |format|
      format.html { redirect_to event_elements_url, notice: 'Event element was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event_element
      @event_element = EventElement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_element_params
      params.require(:event_element).permit(:starting_at, :due_date, :created_at, :updated_at, :name, :reminder)
    end
end
