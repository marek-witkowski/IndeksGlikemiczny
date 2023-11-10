# frozen_string_literal: true

Unit.destroy_all

Unit.create!([
               { name: 'filiżanka' },
               { name: 'garść' },
               { name: 'kromka' },
               { name: 'liść' },
               { name: 'plaster' },
               { name: 'porcja' },
               { name: 'szklanka' },
               { name: 'łyżeczka' },
               { name: 'łyżka' }
             ])

Rails.logger.debug "DB: Create #{Unit.count} units."

ProductType.destroy_all

ProductType.create!([
                      { name: 'Dania' },
                      { name: 'Mięso i ryby' },
                      { name: 'Nabiał' },
                      { name: 'Napoje' },
                      { name: 'Owoce' },
                      { name: 'Produkty zbożowe' },
                      { name: 'Tłuszcze' },
                      { name: 'Warzywa' }
                    ])

Rails.logger.debug "DB: Create #{ProductType.count} product types."
