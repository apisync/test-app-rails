class Product < ApplicationRecord
  apisync do
    sync_if :should_sync?

    attribute :ad_template_type, from: :template_type
    attribute :available, from: :availability
    attribute :content_language, from: :language, value: "pt-br"
    attribute :brand, from: :brand_name
    attribute :description
    attribute :link, from: :weblink
    attribute :model, from: :modelname
    attribute :title, from: :product_title
    attribute :year
  end

  private

  def should_sync?
    true
  end
end
