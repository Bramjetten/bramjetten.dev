module Spina
  module ImagesHelper

    # We wrap some Rails logic inside our own helper method
    # because the resolve directive in ActiveStorage's routes
    # doesn't work outside the main app in 5.2.0.rc2
    def variant(image, options)
      if image.attached? && image.variable?
        # variant = image.variant(options)
        # main_app.rails_blob_representation_path(variant.blob.signed_id, variant.variation.key, variant.blob.filename)
        main_app.rails_public_blob_url(image.variant(options).processed)
      elsif image.image?
        # Allows SVGs to be displayed as they are not variable. Requires:
        # - https://github.com/Dreamersoul/administrate-field-active_storage/issues/36#issuecomment-608446819 to be applied
        #
        # Additionally, https://github.com/hopsoft/active_storage_svg_sanitizer/
        # should be added if users are able to upload their own SVG content due to:
        # https://github.com/rails/rails/issues/34665#issuecomment-445888009
        main_app.url_for(image)
      else
        "https://placehold.it/100x100.png"
      end
    end
    
    def content_type_color(image)
      case content_type(image)
      when "png"
        "bg-green-300"
      when "heic"
        "bg-blue-200"
      when "jpg", "jpeg"
        "bg-blue-400"
      when "gif"
      when "svg"
        "bg-yellow-400"
      else
        "bg-gray-400"
      end
    end
    
    def content_type(image)
      image.file.content_type.split("/").last
    end

    def thumbnail_url(image)
      return "" if image.nil?
      variant(image.file, resize: "500x500")
    end

    def embedded_image_url(image)
      return "" if image.nil?
      variant(image.file, resize: Spina.config.embedded_image_size, loader: {page: nil})
    end

  end
end
