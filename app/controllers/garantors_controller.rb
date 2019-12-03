class GarantorsController < ApplicationController
  before_action :set_garantor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /garantors
  # GET /garantors.json
  def index
    @garantors = Garantor.all
    @tranf = @garantors.sum(:value_tranfer)
  end

  # GET /garantors/1
  # GET /garantors/1.json
  def show
  end

  # GET /garantors/new
  def new
    @garantor = Garantor.new
  end

  # GET /garantors/1/edit
  def edit
  end

  # POST /garantors
  # POST /garantors.json
  def create
    @garantor = Garantor.new(garantor_params)

    respond_to do |format|
      if @garantor.save
        bank_acount = BankAccount.new
        bank_acount.date = DateTime.now
        bank_acount.balance = @garantor.value_tranfer
        bank_acount.save

        format.html { redirect_to @garantor, notice: 'Garantor was successfully created.' }
        format.json { render :show, status: :created, location: @garantor }
      else
        format.html { render :new }
        format.json { render json: @garantor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /garantors/1
  # PATCH/PUT /garantors/1.json
  def update
    respond_to do |format|
      old_value = @garantor.value_tranfer
      if @garantor.update(garantor_params)
        bank_acount = BankAccount.new
        bank_acount.date = DateTime.now
        bank_acount.balance = - old_value
        bank_acount.save

        bank_acount = BankAccount.new
        bank_acount.date = DateTime.now
        bank_acount.balance = @garantor.value_tranfer
        bank_acount.save

        format.html { redirect_to @garantor, notice: 'Garantor was successfully updated.' }
        format.json { render :show, status: :ok, location: @garantor }
      else
        format.html { render :edit }
        format.json { render json: @garantor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /garantors/1
  # DELETE /garantors/1.json
  def destroy
    bank_acount = BankAccount.new
    bank_acount.date = DateTime.now
    bank_acount.balance = - @garantor.value_tranfer
    bank_acount.save

    @garantor.destroy
    respond_to do |format|
      format.html { redirect_to garantors_url, notice: 'Garantor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garantor
      @garantor = Garantor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def garantor_params
      params.require(:garantor).permit(:name, :address, :telephone, :value_tranfer)
    end
end
