class SenryusController < ApplicationController
  unloadable

  before_filter :find_project, :authorize

  def index
    @senryus = Senryu.all
  end

  def new
    @senryu = Senryu.new
  end

  def create
    @senryu = Senryu.new(params[:senryu])
    @senryu.save
    redirect_to project_senryus_path(@project)
  end

  private

  def find_project
    @project = Project.find(params[:project_id])
  rescue ActiveRecord::RecordNotFound
    render_404
  end
end
