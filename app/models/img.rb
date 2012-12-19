# coding: utf-8

class Img < ActiveRecord::Base

  validate :file_invalid?

  attr_accessible :ctype, :image, :name

  def data=(data)
    self.ctype = data.content_type
    self.image = data.read
  end

  private
  def file_invalid?
    ps = ['image/jpeg', 'image/jpg', 'image/gif', 'image/png']
    errors.add(:image, ' is not image file.') if !ps. include?(self.ctype)
    errors.add(:image, ' is over 1 megabytes.') if self.image.length > 1.megabyte
  end
end
