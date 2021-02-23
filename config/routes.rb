Rails.application.routes.draw do
  mount Spina::Engine => '/'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  direct :rails_public_blob do |blob|
    File.join("https://cdn.bramjetten.dev", blob.key)
  end
end

