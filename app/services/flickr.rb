require 'flickraw'
# Flcikr class for search of photos.
class Flickr
  def self.photos(tag)
    FlickRaw.api_key = ENV['FLICKRAPIKEY']
    FlickRaw.shared_secret = ENV['FLICKRSECRET']

    @photos = flickr.photos.search(tags: tag, per_page: 9).map do |photo|
      "https://farm#{photo.farm}.staticflickr.com/#{photo.server}/#{photo.id}_#{photo.secret}.jpg"
    end
  end
end
