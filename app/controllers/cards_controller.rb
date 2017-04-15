class CardsController < ApplicationController
  before_action :authenticate
  before_action :set_card, only: [:show, :update, :destroy]

  # GET /cards
  def index
    @cards = @current_user.cards
  end

  # GET /cards/1
  def show
  end

  # POST /cards
  def create
    @card = @current_user.cards.new(card_params)
    @card.save
  end

  # PATCH/PUT /cards/1
  def update
    @card.update(card_params)
  end

  # DELETE /cards/1
  def destroy
    @card.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_card
      @card = @current_user.cards.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def card_params
      params.permit(:front, :back)
    end
end
