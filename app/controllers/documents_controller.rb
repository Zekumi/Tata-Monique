class DocumentsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_document, only: [:edit, :update, :destroy]

  def index
    @documents = policy_scope(Document)
    if params[:category]
      @documents = Document.where(category: params[:category])
    else
      @documents = Document.all
    end
  end

  def new
    @document = Document.new
    authorize @document
  end

  def create
    @document = Document.new(params_document)
    @document.user = current_user
    if @document.save
      authorize @document
      redirect_to documents_path
    else
      render :new
    end
  end

  def edit
  end

  def show
    @document = Document.find(params[:id])
  end

  def update
    @document.update(params_document)
    @document.user = current_user
    if @document.save
      redirect_to document_path(@document)
    else
      render :new
    end
  end

  def destroy
    authorize @document
    @document.destroy
    redirect_to documents_path
  end

  private

  def set_document
    @document = Document.find(params[:id])
  end

  def params_document
    params.require(:document).permit(:category, :name, :photo)
  end
end
