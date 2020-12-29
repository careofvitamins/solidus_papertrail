module SolidusPapertrail
  module Spree
    module AdjustmentDecorator
      def self.prepended(mod)
        mod.include ::Spree::Versionable
        mod.has_paper_trail versions: { class_name: 'Spree::AdjustmentVersion' }, on: %i[create update destroy]
      end

      ::Spree::Adjustment.prepend self
    end
  end
end
