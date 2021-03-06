 module Jekyll
  class AreaList < Liquid::Tag
    safe = true

    def initialize(tag_name, text, tokens)
      super
    end

    def render(context)
      html = ""
      tags = context.registers[:site].tags
      tags.each do |tag, posts|
        unless tag.nil?
          html << "<li class='portfolio-grid__filter' data-filter=\"#{tag.downcase}\"><a href=\"#\">#{tag.capitalize}</a></li>\n"
        end
      end
      html

    end
  end
end

Liquid::Template.register_tag('area_list', Jekyll::AreaList)
