# coding: utf-8

class ImgsController < ApplicationController

  def upload
    f = params[:data]

    if !f.blank?
      @img = Img.new()
      @img.name = f.original_filename
      @img.ctype = f.content_type
      @img.image = f.read

      if @img.save
        @msg = 'upload is successful.'
      else
        @msg = 'upload is fail.'
      end
    else
      @msg = 'file is not selected.'
    end
  end

  def search
    name = params[:fname]

    if name.blank?
      @imgs = Img.select('id, name')
    else
      @imgs = Img.where('name = ?', name).select('id, name')
    end
  end

  def img_view
    @img = Img.find(params[:id])
  end

  def get_image
    @img = Img.find(params[:id])
    send_data @img.image, type: @img.ctype, disposition: 'inline'
  end
end
