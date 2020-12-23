module Spree
  Order.class_eval do
    include Spree::Versionable
    has_paper_trail versions: { class_name: 'Spree::OrderVersion' }, on: %i[create update destroy]
  end
end
