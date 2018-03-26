spree_version = Gem.loaded_specs['spree_core'].version
unless spree_version >= Gem::Version.create('3.3.0') && spree_version < Gem::Version.create('3.5.0.alpha')
  Deface::Override.new(
    virtual_path: 'spree/orders/show',
    name: 'add_order_complete_to_orders_show',
    insert_before: "#order_summary",
    partial: 'spree/shared/trackers/segment/order_complete.js'
  )
end
