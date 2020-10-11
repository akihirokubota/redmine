class PollsController < ApplicationController
  unloadable

  before_filter :find_project, :authorize, :only => :index

  def index
    @polls = Poll.all
  end

  def vote
    poll = Poll.find(params[:id])
    poll.vote(params[:answer])
    if poll.save
      flash[:notice] = 'Vote saved.'
    end
    @project = Project.find(params[:project_id])
    redirect_to :action => 'index', :project_id => @project.identifier
  end

  private

  def find_project
    # @project variable must be set before calling the authorize filter
    @project = Project.find(params[:project_id])
    # @project = Project.find_by(identifier: params[:project_id])
  end

end
