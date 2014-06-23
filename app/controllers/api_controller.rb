class ApiController < ApplicationController
  def write
    note = Note.new
    note.content = params[:tt]
    note.save

    render :json => [note.id, note.content]
  end
  def update
    note = Note.find(params[:note_id])
    note.content = params[:tt]
    note.save

    render :json => true
  end
end
