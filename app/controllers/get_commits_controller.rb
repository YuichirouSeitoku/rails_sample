class GetCommitsController < ApplicationController
  before_action :set_get_commit, only: %i[ show edit update destroy ]

  # GET /get_commits or /get_commits.json
  def index
    @get_commits = GetCommit.all
  end

  # GET /get_commits/1 or /get_commits/1.json
  def show
  end

  # GET /get_commits/new
  def new
    @get_commit = GetCommit.new
  end

  # GET /get_commits/1/edit
  def edit
  end

  # POST /get_commits or /get_commits.json
  def create
    @get_commit = GetCommit.new(get_commit_params)

    respond_to do |format|
      if @get_commit.save
        format.html { redirect_to @get_commit, notice: "Get commit was successfully created." }
        format.json { render :show, status: :created, location: @get_commit }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @get_commit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /get_commits/1 or /get_commits/1.json
  def update
    respond_to do |format|
      if @get_commit.update(get_commit_params)
        format.html { redirect_to @get_commit, notice: "Get commit was successfully updated." }
        format.json { render :show, status: :ok, location: @get_commit }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @get_commit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /get_commits/1 or /get_commits/1.json
  def destroy
    @get_commit.destroy
    respond_to do |format|
      format.html { redirect_to get_commits_url, notice: "Get commit was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_get_commit
      @get_commit = GetCommit.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def get_commit_params
      params.fetch(:get_commit, {})
    end
end
