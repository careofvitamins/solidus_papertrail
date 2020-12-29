module SolidusPapertrail
  module Spree
    module OrderDecorator
      def self.prepended(mod)
        mod.include ::Spree::Versionable
        mod.has_paper_trail versions: { class_name: 'Spree::OrderVersion' }, on: %i[create update destroy]
      end

      ::Spree::Order.prepend self
    end
  end
end
