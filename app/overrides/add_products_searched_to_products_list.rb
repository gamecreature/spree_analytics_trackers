spree_version = Gem.loaded_specs['spree_core'].version
unless spree_version >= Gem::Version.create('3.4.0') && spree_version < Gem::Version.create('3.5.0.alpha')
  Deface::Override.new(
    virtual_path: 'spree/shared/_products',
    name: 'add_products_searched_to_products_list',
    insert_before: "[data-hook='products_search_results_heading']",
    partial: 'spree/shared/trackers/segment/products_searched.js'
  )
end
