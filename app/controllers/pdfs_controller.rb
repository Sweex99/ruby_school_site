class PdfsController < ApplicationController
  before_action :set_pdf, only: %i[show edit update destroy]

  # GET /pdfs
  # GET /pdfs.json
  def index
    @file = { "docx" => '/docx.jpg', "pdf" => "/pdf.png", "xlsx" => "/xls.jpg", "pptx" => "/pptx.jpg",
              "xls" => "/xls.jpg", "ppt" => "/pptx.jpg", "doc" => '/docx.jpg'}
    @pdfs = Pdf.order(created_at: :desc)
  end

  # GET /pdfs/1
  # GET /pdfs/1.json
  def show
    @pdf = Pdf.find(params[:id])
    pdf_filename = File.join(Rails.root, "public/uploaded_pdf/#{@pdf.path}")
    send_file(pdf_filename, filename: @pdf.path.to_s, type: 'application/pdf',
                            x_sendfile: true,
                            disposition: 'inline')
  end

  def download
    @pdf = Pdf.find(params[:id])
    pdf_filename = File.join(Rails.root, "public/uploaded_pdf/#{@pdf.path}")
    send_file(pdf_filename, filename: @pdf.path.to_s,
                            type: 'application/pdf',
                            x_sendfile: true)
  end

  # GET /pdfs/new
  def new
    @pdf = Pdf.new
  end

  # GET /pdfs/1/edit
  def edit
    @pdf = Pdf.find(params[:id])
  end

  # POST /pdfs
  # POST /pdfs.json
  def create
    @pdf = Pdf.new(pdf_params)

    # save file in public folder
    uploaded_io = params[:pdf][:path]
    File.open(Rails.root.join('public',
                              'uploaded_pdf',
                              uploaded_io.original_filename), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    @pdf.path = uploaded_io.original_filename

    redirect_to pdfs_path, notice: 'Файл успішно добавлено' if @pdf.save
  end

  # PATCH/PUT /pdfs/1
  # PATCH/PUT /pdfs/1.json
  def update
    @pdf = Pdf.find(params[:id])
    respond_to do |format|
      if @pdf.update_attributes(pdf_params)
        format.html { redirect_to @pdf, notice: 'Pdf was successfully updated.' }
        format.json { render :show, status: :ok, location: @pdf }
      else
        format.html { render :edit }
        format.json { render json: @pdf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pdfs/1
  # DELETE /pdfs/1.json
  def destroy
    @pdf = Pdf.find(params[:id])
    path_to_file = Rails.root.join('public', 'uploaded_pdf', @pdf.path.to_s)
    File.delete(path_to_file) if File.exist?(path_to_file)
    @pdf.destroy
    flash[:notice] = 'Файл успішно видалено'
    redirect_to pdfs_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_pdf
    @pdf = Pdf.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def pdf_params
    params.require(:pdf).permit(:title, :description, :path, :author)
  end
end
