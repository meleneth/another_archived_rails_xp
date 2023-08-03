class FlaggedForReviewsController < ApplicationController
  before_action :set_flagged_for_review, only: %i[ show edit update destroy ]

  # GET /flagged_for_reviews or /flagged_for_reviews.json
  def index
    @flagged_for_reviews = FlaggedForReview.all
  end

  # GET /flagged_for_reviews/1 or /flagged_for_reviews/1.json
  def show
  end

  # GET /flagged_for_reviews/new
  def new
    @flagged_for_review = FlaggedForReview.new
  end

  # GET /flagged_for_reviews/1/edit
  def edit
  end

  # POST /flagged_for_reviews or /flagged_for_reviews.json
  def create
    @flagged_for_review = FlaggedForReview.new(flagged_for_review_params)

    respond_to do |format|
      if @flagged_for_review.save
        format.html { redirect_to flagged_for_review_url(@flagged_for_review), notice: "Flagged for review was successfully created." }
        format.json { render :show, status: :created, location: @flagged_for_review }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @flagged_for_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /flagged_for_reviews/1 or /flagged_for_reviews/1.json
  def update
    respond_to do |format|
      if @flagged_for_review.update(flagged_for_review_params)
        format.html { redirect_to flagged_for_review_url(@flagged_for_review), notice: "Flagged for review was successfully updated." }
        format.json { render :show, status: :ok, location: @flagged_for_review }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @flagged_for_review.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /flagged_for_reviews/1 or /flagged_for_reviews/1.json
  def destroy
    @flagged_for_review.destroy

    respond_to do |format|
      format.html { redirect_to flagged_for_reviews_url, notice: "Flagged for review was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flagged_for_review
      @flagged_for_review = FlaggedForReview.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def flagged_for_review_params
      params.require(:flagged_for_review).permit(:comment_id, :status)
    end
end
