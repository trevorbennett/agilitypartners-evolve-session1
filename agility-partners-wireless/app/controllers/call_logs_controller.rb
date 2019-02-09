class CallLogsController < ApplicationController
  before_action :set_call_log, only: [:show, :edit, :update, :destroy]

  # GET /call_logs
  # GET /call_logs.json
  def index
    @call_logs = CallLog.all
  end

  # GET /call_logs/1
  # GET /call_logs/1.json
  def show
  end

  # GET /call_logs/new
  def new
    @call_log = CallLog.new
  end

  # GET /call_logs/1/edit
  def edit
  end

  # POST /call_logs
  # POST /call_logs.json
  def create
    @call_log = CallLog.new(call_log_params)

    respond_to do |format|
      if @call_log.save
        format.html { redirect_to @call_log, notice: 'Call log was successfully created.' }
        format.json { render :show, status: :created, location: @call_log }
      else
        format.html { render :new }
        format.json { render json: @call_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /call_logs/1
  # PATCH/PUT /call_logs/1.json
  def update
    respond_to do |format|
      if @call_log.update(call_log_params)
        format.html { redirect_to @call_log, notice: 'Call log was successfully updated.' }
        format.json { render :show, status: :ok, location: @call_log }
      else
        format.html { render :edit }
        format.json { render json: @call_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /call_logs/1
  # DELETE /call_logs/1.json
  def destroy
    @call_log.destroy
    respond_to do |format|
      format.html { redirect_to call_logs_url, notice: 'Call log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_call_log
      @call_log = CallLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def call_log_params
      params.require(:call_log).permit(:to_id, :from_id, :start, :end)
    end
end
