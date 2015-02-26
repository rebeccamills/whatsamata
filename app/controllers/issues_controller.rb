class IssuesController < ApplicationController
  before_action :authenticate_user!


  def index
    @issue = Issue.new
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
    @issue = Issue.new
    @issues = Issue.where(route: params[:route])
    @favorite = Favorite.new
    @favorite.busroute = params[:route]
  end


  def edit
    @issue = Issue.find(params[:id])
  end

  def create
    @issue = Issue.new(issue_params)

    if @issue.save
      redirect_to issues_path
    else
      render 'new'
    end
  end

  def update
    @issue = Issue.find(params[:id])
    if @issue.update(issue_params)
      redirect_to @issue
    else
      render 'edit'
    end
  end

  def destroy
    @issue = Issue.find(params[:id])
    @issue.destroy
    redirect_to issues_path
  end

  private
  def issue_params
    params.require(:issue).permit(:title, :text, :route, :user_id)
  end
end

