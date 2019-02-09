class TextLogsController < ApplicationController
  before_action :set_text_log, only: [:show, :edit, :update, :destroy]

  # GET /text_logs
  # GET /text_logs.json
  def index
    @text_logs = TextLog.all
  end

  # GET /text_logs/1
  # GET /text_logs/1.json
  def show
  end

  # GET /text_logs/new
  def new
    @text_log = TextLog.new
  end

  # GET /text_logs/1/edit
  def edit
  end

  # POST /text_logs
  # POST /text_logs.json
  def create
    @text_log = TextLog.new(text_log_params)

    respond_to do |format|
      if @text_log.save
        format.html { redirect_to @text_log, notice: 'Text log was successfully created.' }
        format.json { render :show, status: :created, location: @text_log }
      else
        format.html { render :new }
        format.json { render json: @text_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /text_logs/1
  # PATCH/PUT /text_logs/1.json
  def update
    respond_to do |format|
      if @text_log.update(text_log_params)
        format.html { redirect_to @text_log, notice: 'Text log was successfully updated.' }
        format.json { render :show, status: :ok, location: @text_log }
      else
        format.html { render :edit }
        format.json { render json: @text_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /text_logs/1
  # DELETE /text_logs/1.json
  def destroy
    @text_log.destroy
    respond_to do |format|
      format.html { redirect_to text_logs_url, notice: 'Text log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_text_log
      @text_log = TextLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def text_log_params
      params.require(:text_log).permit(:to_id, :from_id, :sent, :message)
    end
end
