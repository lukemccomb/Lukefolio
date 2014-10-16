class Search
  attr_reader :term
  def initialize options = {}
    @term = options.fetch(:term, "")
  end

  def images
    Image.where("keywords iLIKE ?", "%#{term}%")
  end

end