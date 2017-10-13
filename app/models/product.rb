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

  def self.create_default
    Product.create(
      template_type: "Eletronics",
      availability: true,
      language: "pt-br",
      brand_name: "Google",
      description: "New Mobile \n Buy it today!",
      weblink: "http://www.google.com",
      modelname: "Google ic3",
      year: 2017,
      product_title: "GooglePhone"
    )
  end

  private

  def should_sync?
    true
  end
end
