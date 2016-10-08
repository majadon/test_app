class ArticleCommentsController < ApplicationController

  #->Prelang (scaffolding:rails/scope_to_user)
  before_filter :require_user_signed_in, only: [:new, :edit, :create, :update, :destroy]

  before_action :set_article_comment, only: [:show, :edit, :update, :destroy]

  # GET /article_comments
  # GET /article_comments.json
  def index
    @article_comments = ArticleComment.all
  end

  # GET /article_comments/1
  # GET /article_comments/1.json
  def show
  end

  # GET /article_comments/new
  def new
    @article_comment = ArticleComment.new
  end

  # GET /article_comments/1/edit
  def edit
  end

  # POST /article_comments
  # POST /article_comments.json
  def create
    @article_comment = ArticleComment.new(article_comment_params)

    respond_to do |format|
      if @article_comment.save
        format.html { redirect_to @article_comment, notice: 'Article comment was successfully created.' }
        format.json { render :show, status: :created, location: @article_comment }
      else
        format.html { render :new }
        format.json { render json: @article_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /article_comments/1
  # PATCH/PUT /article_comments/1.json
  def update
    respond_to do |format|
      if @article_comment.update(article_comment_params)
        format.html { redirect_to @article_comment, notice: 'Article comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @article_comment }
      else
        format.html { render :edit }
        format.json { render json: @article_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /article_comments/1
  # DELETE /article_comments/1.json
  def destroy
    @article_comment.destroy
    respond_to do |format|
      format.html { redirect_to article_comments_url, notice: 'Article comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article_comment
      @article_comment = ArticleComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_comment_params
      params.require(:article_comment).permit(:content, :user_id, :article_id)
    end
end
