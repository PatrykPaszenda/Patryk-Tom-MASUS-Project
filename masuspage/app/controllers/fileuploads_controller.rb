class FileuploadsController < ApplicationController
  def index
  @fileuploads = Fileupload.all
end

def show
end

def new
  @fileupload = Fileupload.new
end

def create
  @fileupload = Fileupload.new(fileupload_params)

  if @fileupload.save
    redirect_to fileuploads_path, notice: "The fileupload #{@fileupload.name} has been uploaded."
  else
    render "new"
  end
end

def destroy
  @fileupload = Fileupload.find(params[:id])
  @fileupload.destroy
  redirect_to fileuploads_path, notice:  "The fileupload #{@fileupload.name} has been deleted."
end

private
def fileupload_params
  params.require(:fileupload).permit(:name, :attachment)
end
end
