class   XmlController < ApplicationController

  def show

    @some_params = params[:id]

    @file = File.open("#{Rails.root}/app/data/home_work_"+ params[:id].to_s + ".xml", "r")

    @doc = Nokogiri::XML(@file)
    @attributes = @doc.at('subject')['id']
    @subjects = @doc.xpath("//subject")
    @file.close
  end

end