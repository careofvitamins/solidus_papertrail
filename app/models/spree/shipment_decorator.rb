module Spree
  Shipment.class_eval do
    include Spree::Versionable
    has_paper_trail versions: { class_name: 'Spree::ShipmentVersion' }, on: %i[create update destroy]
  end
end
