if Gem.loaded_specs['spree_core'].version >= Gem::Version.create('3.5.0.alpha')
  Deface::Override.new(
    virtual_path: 'spree/checkout/edit',
    name: 'add_google_checkout_to_checkout_edit',
    insert_before: "#checkout",
    partial: 'spree/shared/google_checkout'
  )
end
