class CertificationsController < ApplicationController
  def index
    @certifications = if params[:tag]
      Certification.tagged_with(params[:tag])
    else
      Certification.all
    end
  end

  def new
    @certification = Certification.new
  end

  def show
    @certification = Certification.find(params[:id])
  end

  def create
    @certification = Certification.new(certification_params)
    if @certification.save
      redirect_to @certification, notice: 'Created certification.'
    else
      render :new
    end
  end

  def edit
    @certification = Certification.find(params[:id])
  end

  def update
    @certification = Certification.find(params[:id])
    if @certification.update_attributes(certification_params)
      redirect_to @certification, notice: 'Updated certification.'
    else
      render :edit
    end
  end

  private

  def certification_params
    params.require(:certification).permit(:name, :tag_list)
  end
end

