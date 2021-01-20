module SolidusPapertrail
  module Spree
    module PaymentDecorator
      def self.prepended(mod)
        mod.include ::Spree::Versionable
        mod.has_paper_trail versions: { class_name: 'Spree::PaymentVersion' }, on: %i[create update destroy]
      end

      ::Spree::Payment.prepend self
    end
  end
end
