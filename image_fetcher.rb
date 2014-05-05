class ImageFetcher

  def initialize(data)
    @data = data
  end

  def count_children
     @data["data"]["children"].count
  end

  def first_child
    @data["data"]["children"].first["data"]
  end

  def all_images
    @data["data"]["children"].map { |child| child["data"]["url"]}
  end

  def only_imgur_images
    all_images.select { |image|
     image.include?"i.imgur.com"
    }
  end

end
