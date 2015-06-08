Spree::Image.class_eval do

  def to_jq_upload
    {
        'name' => read_attribute(:attachment_file_name),
        'size' => read_attribute(:attachment_file_size),
        'thumbnail_url' => attachment.url(:mini, false),
        'url' => attachment.url(:product, false),

        # TODO: find the way to generate edit and delete urls here
        #include Rails.application.routes.url_helpers doesn't work
        'edit_url' => '',
        'delete_url' => ''
    }
  end

end
