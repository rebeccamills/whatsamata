class IssuesController < ApplicationController
  def index
    @issue = Issue.new
    @issues = Issue.all
  end

  def show
    @issue = Issue.find(params[:id])
  end

  def new
    @issue = Issue.new
    # @issues = issue.where route is route
    # @issues = params[:bus_id]
    @issues = Issue.all
    #add routes column to issues table
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
    params.require(:issue).permit(:title, :text)
  end
end



# class IssuesController < ApplicationController
#   def index
#     @issues = Issue.all
#   end


#   def show
#     @issue = Issue.find(params[:id])
#   end


#   def new
#   	@issue = Issue.new
#   end

#   def edit
#   	@issue = Issue.find(params[:id])
#   end


# def create
#   @issue = Issue.new(issue_params)
 
#   @issue.save
#   redirect_to @issue
# end

# def update
#   @issue = Issue.find(params[:id])
#   if @issue.update_attributes(issue_params)
#     redirect_to @issue
#   else
#     render 'edit'
#   end
# end

# def destroy
#   @issue = Issue.find(params[:id])
#   @issue.destroy
 
#   redirect_to issues_path
# end
 
# private
#   def issue_params
#     params.require(:issue).permit(:title, :text)
#   end
# end



