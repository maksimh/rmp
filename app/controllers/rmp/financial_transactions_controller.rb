require_dependency "rmp/application_controller"

module Rmp
  class FinancialTransactionsController < ApplicationController
    before_action :set_financial_transaction, only: [:show, :edit, :update, :destroy]

    # GET /financial_transactions
    def index
      @financial_transactions = FinancialTransaction.all
    end

    # GET /financial_transactions/1
    def show
    end

    # GET /financial_transactions/new
    def new
      @financial_transaction = FinancialTransaction.new
    end

    # GET /financial_transactions/1/edit
    def edit
    end

    # POST /financial_transactions
    def create
      @financial_transaction = FinancialTransaction.new(financial_transaction_params)

      if @financial_transaction.save
        redirect_to @financial_transaction, notice: 'Financial transaction was successfully created.'
      else
        render :new
      end
    end

    # PATCH/PUT /financial_transactions/1
    def update
      if @financial_transaction.update(financial_transaction_params)
        redirect_to @financial_transaction, notice: 'Financial transaction was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /financial_transactions/1
    def destroy
      @financial_transaction.destroy
      redirect_to financial_transactions_url, notice: 'Financial transaction was successfully destroyed.'
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_financial_transaction
        @financial_transaction = FinancialTransaction.find(params[:id])
      end

      # Only allow a trusted parameter "white list" through.
      def financial_transaction_params
        params.require(:financial_transaction).permit(:date, :description)
      end
  end
end
