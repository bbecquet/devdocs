module Docs
  class Leaflet
    class EntriesFilter < Docs::EntriesFilter
      def additional_entries
        entries = []

        css('h2').each do |heading|
          type = heading.content.split.first

          heading.parent.css('a').each do |link|
            name = link.content
            name = name.remove(/\u{279C}.*/)
            entries << [name, link['href'].remove('#'), type]
          end
        end

        entries
      end
    end
  end
end
