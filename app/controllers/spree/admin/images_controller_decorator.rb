Spree::Admin::ImagesController.class_eval do

  def create
    invoke_callbacks(:create, :before)
    @object.attributes = params[object_name]
    @object.attachment = params[object_name][:attachment].first

    if @object.save
      invoke_callbacks(:create, :after)
      result = {
          :files => [
              @object.to_jq_upload.merge({
                  # TODO: this is a dirty hack. See model decorator TODO for details
                  :edit_url => edit_admin_product_image_url(@object.viewable.product, @object),
                  :delete_url => admin_product_image_url(@object.viewable.product , @object)
              })
          ]
      }
      respond_to do |format|
        format.html { render :json => result, :content_type => 'text/html', :layout => false }
        format.json { render json: result, status: :created }
      end
    else
      respond_to do |format|
        format.html { render :action => 'index' }
        format.json { render :json => @object.errors, status: :unprocessable_entity, :layout => false }
      end
    end
  end

  def multi_upload

  end

  def new_actions
    [:new, :create, :multi_upload]
  end
end
