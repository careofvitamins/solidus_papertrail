module SolidusPapertrail
  module Spree
    module ShipmentDecorator
      def self.prepended(mod)
        mod.include ::Spree::Versionable
        mod.has_paper_trail versions: { class_name: 'Spree::ShipmentVersion' }, on: %i[create update destroy]
      end

      ::Spree::Shipment.prepend self
    end
  end
end
