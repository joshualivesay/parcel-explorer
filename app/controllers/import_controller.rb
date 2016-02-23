require 'csv'
class ImportController < ApplicationController

  def index

  end

  def import
    status = Status.first
    status.update_attributes({state: 'Offline', records: 0})

    filepath = "public/import.csv"
    Resque.enqueue(Importer, filepath)
  end

  def status
    render json: Status.first, status: 200
  end
end