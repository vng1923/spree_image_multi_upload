Spree::Admin::ImagesController.class_eval do

  def create
    
    product = Spree::Product.where('slug' => params['product_id'])
    params[object_name][:attachment].each do |attachment_object|
      #@object.attributes = params[object_name]
      product = Spree::Product.where('slug' => params['product_id'])
      #@object = Spree::Image.create
      #@object.viewable.product = product
      #@object.viewable_id = product[0].id


      image = Spree::Image.new
      image.attachment = attachment_object
      image.viewable_id = params[:image][:viewable_id] #product[0].id
      image.type = 'Spree::Image'
      image.viewable_type = 'Spree::Variant'
      #binding.pry
      image.save

      #invoke_callbacks(:create, :before)
      #@object.attachment = attachment_object
      #@object.save
      #invoke_callbacks(:create, :after)
      
    end
    redirect_to '/admin/products/' + product[0].slug + '/images' #admin_product_url(product)
    
  end

  def multi_upload

  end

  def new_actions
    [:new, :create, :multi_upload]
  end
end
