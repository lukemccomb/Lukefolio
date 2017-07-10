class Search
  attr_reader :term
  def initialize options = {}
    @term = options.fetch(:term, "").downcase
  end

  def images
    # Image.where("keywords @> ?", "{#{@term}}")
    ActiveRecord::Base.connection.execute("SELECT * FROM images WHERE '#{@term}'=ANY(keywords)")
  end

end
