class XmlController < ApplicationController
  layout 'application'

  def show
    @file = File.open("#{Rails.root}/app/data/home_work_" + params[:id].to_s + '.xml', 'r')
    @doc = Nokogiri::XML(@file)

    @attributes = @doc.at('subject')['id']
    @subjects = @doc.xpath('//subject')

    @file.close
  end

  def subject
    @file = File.open("#{Rails.root}/app/data/timetable/all_subject.xml", 'r')
    @doc = Nokogiri::XML(@file)

    @subjects = @doc.xpath('//subject')

    @file.close
    @article = nil
  end

  def change(id, new_name); end
end
