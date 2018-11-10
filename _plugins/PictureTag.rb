class PictureTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    @input = input
  end

  def render(context)
    input_split = @input.split('|')
    caption = input_split[0].strip
    image = input_split[1].strip

    output =  <<-PIC
<div class="captionedImage">
  <a href="#{image}">
    <img src="#{image}" alt="#{caption}" width="100%">
  </a>
  <p class="caption">#{caption}</p>
</div>
    PIC
    return output;
  end
end
Liquid::Template.register_tag('picture', PictureTag)
