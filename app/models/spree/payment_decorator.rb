module Spree
  Payment.class_eval do
    include Spree::Versionable
    has_paper_trail class_name: 'Spree::PaymentVersion', on: %i[create update destroy]
  end
end
