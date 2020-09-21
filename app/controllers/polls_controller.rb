class PollsController < ApplicationController
  unloadable

  before_filter :find_project, :authorize, :only => :index

  def index
    puts params
    puts "hoge\n"*5
    # @project = Project.find(params[:project_id])
    # @project = Project.find_by(identifier: params[:project_id])
    @polls = Poll.all
  end

  def vote
    poll = Poll.find(params[:id])
    poll.vote(params[:answer])
    if poll.save
      flash[:notice] = 'Vote saved.'
    end
    puts @project = Project.find(params[:project_id])
    puts "bar111\n"*5
    # , params: {project_id: @project.identifier}
    puts params
    redirect_to :action => 'index', :project_id => @project.identifier
  end

  private

  def find_project
    # @project variable must be set before calling the authorize filter
    # @project = Project.find(params[:project_id])
    puts "hoge22\n"*5
    puts params
    puts @project.nil?
    # @project = Project.find_by(identifier: params[:project_id]) if @project.nil?
    @project = Project.find_by(identifier: params[:project_id])
  end

end
