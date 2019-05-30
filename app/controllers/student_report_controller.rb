class StudentReportController < ApplicationController
  before_action :authenticate_user!

  def index
    @reports = Report.where(:student_id => current_user.id)
  end

  def show

  end

  def edit

  end

  def destroy
    if Report.destroy(params[:id])
      redirect_to root_path, notice: 'Yeeeeh'
    end
  end

  def update

  end


  def create
    data = (params[:start_date]['when(3i)'] + '-' +
        params[:start_date]['when(2i)'] + '-' +
        params[:start_date]['when(1i)']).to_s
    @report = Report.new(:student_id => params[:student_id], :body => params[:report][:body], :when => data, :who => params[:report][:who])

    ReportMailer.reports_mailer.deliver

    redirect_to student_report_index_path, notice: 'Зауваження створено' if @report.save
  end

  def new
    @report = Report.new
  end

end
