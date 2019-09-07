class RequestNotifiersController < ApplicationController
  before_action :set_request_notifier, only: [:show, :edit, :update, :destroy]

  # GET /request_notifiers
  # GET /request_notifiers.json
  def index
    @request_notifiers = RequestNotifier.all
  end

  # GET /request_notifiers/1
  # GET /request_notifiers/1.json
  def show
  end

  # GET /request_notifiers/new
  def new
    @request_notifier = RequestNotifier.new
  end

  # GET /request_notifiers/1/edit
  def edit
  end

  # POST /request_notifiers
  # POST /request_notifiers.json
  def create
    @request_notifier = RequestNotifier.new(request_notifier_params)

    respond_to do |format|
      if @request_notifier.save
        format.html { redirect_to @request_notifier, notice: 'Request notifier was successfully created.' }
        format.json { render :show, status: :created, location: @request_notifier }
      else
        format.html { render :new }
        format.json { render json: @request_notifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /request_notifiers/1
  # PATCH/PUT /request_notifiers/1.json
  def update
    respond_to do |format|
      if @request_notifier.update(request_notifier_params)
        format.html { redirect_to @request_notifier, notice: 'Request notifier was successfully updated.' }
        format.json { render :show, status: :ok, location: @request_notifier }
      else
        format.html { render :edit }
        format.json { render json: @request_notifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /request_notifiers/1
  # DELETE /request_notifiers/1.json
  def destroy
    @request_notifier.destroy
    respond_to do |format|
      format.html { redirect_to request_notifiers_url, notice: 'Request notifier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request_notifier
      @request_notifier = RequestNotifier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def request_notifier_params
      params.require(:request_notifier).permit(:todo_name, :urgency, :description, :photo)
    end
end
