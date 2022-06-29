require 'UUID'

class Item
  attr_accessor :publish_date, :archived
  attr_reader :label, :genre, :author, :source

  def initialize(publish_date, archived: false)
    @id = UUID.new.generate
    @publish_date = publish_date
    @archived = archived
  end

  def can_be_archived?
    published_date > 10
  end

  def move_to_archive
    @archived = true if can_be_archived? == true
  end

  private :can_be_archived?
end
