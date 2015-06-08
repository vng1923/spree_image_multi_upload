Spree Image Multi Upload
=====================

Allow to upload several product images at the same time with drag&drop support.

Requirements
------------

Extension in master branch depends on Spree 1.3.x.


Installation
------------

To use the last stable release of spree_image_multi_upload, add the following to your Gemfile:
```ruby
gem 'spree_image_multi_upload', :git => 'git://github.com/huyngvu/spree_image_multi_upload.git'
```

Now bundle up with:
```
bundle install
```

Next, run the rake task that copies the necessary files to your project:
```
rails g spree_image_multi_upload:install
```

Now you should be able to boot up your server with:
```
rails s
```

