module Docs
  class Leaflet < UrlScraper
    self.name = 'Leaflet'
    self.slug = 'Leaflet'
    self.type = 'Leaflet'
    self.links = {
      home: 'http://leafletjs.com/',
      code: 'https://github.com/Leaflet/Leaflet/'
    }

    html_filters.push 'leaflet/entries', 'leaflet/clean_html', 'title'

    options[:title] = 'leaflet'
    options[:skip_links] = true

    options[:attribution] = <<-HTML
      &copy; 2015 Vladimir Agafonkin. Maps &copy; OpenStreetMap contributors.
    HTML

    version '1.0' do
      self.release = '1.0.0'
      self.base_url = 'http://leafletjs.com/reference-1.0.0.html'
    end

    version '0.7' do
      self.release = '0.7'
      self.base_url = 'http://leafletjs.com/reference.html'
    end
  end
end
