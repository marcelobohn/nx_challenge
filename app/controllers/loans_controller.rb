class LoansController < ApplicationController
  def create
    loan = Loan.new(loan_params)
    if loan.save
      render json: {status: 'SUCCESS', message:'Saved loan', data:loan},status: :ok
    else
      render json: {status: 'ERROR', message:'Articles not saved', data:loan.erros},status: :unprocessable_entity
    end
  end

  def show
    loan = Loan.find(params[:id])
    if loan
      pmt =  3_700 / 12
      render json: {status: 'SUCCESS', message:'Loaded loan', data:loan, pmt:pmt},status: :ok
    else
      render json: {status: 'ERROR', message:'Loaded not found', data:loan},status: :not_found
    end
  end

  private
  def loan_params
    params.require(:loan).permit(:name, :value, :tax)
  end
end
