module Spree
  ReturnAuthorization.class_eval do
    include Spree::Versionable
    has_paper_trail versions: { class_name: 'Spree::ReturnAuthorizationVersion' }, on: %i[create update destroy]
  end
end
