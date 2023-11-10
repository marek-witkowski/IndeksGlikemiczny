# frozen_string_literal: true

Unit.destroy_all
Unit.create!([
               { name: 'filiżanka' },
               { name: 'garść' },
               { name: 'kromka' },
               { name: 'liść' },
               { name: 'łyżeczka' },
               { name: 'łyżka' },
               { name: 'plaster' },
               { name: 'porcja' },
               { name: 'szklanka' },
               { name: 'sztuka' }
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

Product.destroy_all
Product.create!([
                  { name: 'Makaron z pszenicy zwyczajnej', calorific_value: 196, glycemic_index: 70, weight: 140, product_type_id: 6, unit_id: 9 },
                  { name: 'Winogrona', calorific_value: 50, glycemic_index: 56, weight: 70, product_type_id: 5, unit_id: 2 },
                  { name: 'Ananas', calorific_value: 44, glycemic_index: 59, weight: 80, product_type_id: 5, unit_id: 7 },
                  { name: 'Melon', calorific_value: 36, glycemic_index: 65, weight: 100, product_type_id: 5, unit_id: 8 },
                  { name: 'Kukurudza konserwowa', calorific_value: 12, glycemic_index: 55, weight: 15, product_type_id: 8, unit_id: 6 },
                  { name: 'Groszek zielony konserwowy', calorific_value: 11, glycemic_index: 66, weight: 15, product_type_id: 8, unit_id: 6 },
                  { name: 'Bób gotowany', calorific_value: 110, glycemic_index: 70, weight: 100, product_type_id: 8, unit_id: 8 },
                  { name: 'Burak gotowany', calorific_value: 37, glycemic_index: 65, weight: 100, product_type_id: 8, unit_id: 8 },
                  { name: 'Ziemniaki gotowane', calorific_value: 60, glycemic_index: 70, weight: 85, product_type_id: 8, unit_id: 10 },

                  { name: 'Chleb pszenny', calorific_value: 65, glycemic_index: 71, weight: 25, product_type_id: 6, unit_id: 3  },
                  { name: 'Bagietka pszenna', calorific_value: 53, glycemic_index: 95, weight: 20, product_type_id: 6, unit_id: 3 },
                  { name: 'Płatki kukurydziane', calorific_value: 11, glycemic_index: 81, weight: 3, product_type_id: 6, unit_id: 6 },
                  { name: 'Mąka ziemniaczana', calorific_value: 86, glycemic_index: 90, weight: 25, product_type_id: 6, unit_id: 6 },
                  { name: 'Ryż biały', calorific_value: 18, glycemic_index: 71, weight: 15, product_type_id: 6, unit_id: 6 },
                  { name: 'Kasza jaglana', calorific_value: 34, glycemic_index: 71, weight: 30, product_type_id: 6, unit_id: 6 },

                  { name: 'Dojrzały banan', calorific_value: 116, glycemic_index: 70, weight: 120, product_type_id: 5, unit_id: 10 },
                  { name: 'Arbuz', calorific_value: 126, glycemic_index: 72, weight: 350, product_type_id: 5, unit_id: 7 },
                  { name: 'Suszone daktyle', calorific_value: 131, glycemic_index: 103, weight: 45, product_type_id: 5, unit_id: 2 },

                  { name: 'Dynia', calorific_value: 33, glycemic_index: 75, weight: 100, product_type_id: 8, unit_id: 8 },

                  { name: 'Słodzone napoje', calorific_value: 101, glycemic_index: 70, weight: 240, product_type_id: 4, unit_id: 9 },
                  { name: 'Piwo', calorific_value: 108, glycemic_index: 110, weight: 220, product_type_id: 4, unit_id: 9 },

                  { name: 'Frytki', calorific_value: 331, glycemic_index: 75, weight: 100, product_type_id: 1, unit_id: 8 },
                  { name: 'Purée z ziemniaków', calorific_value: 92, glycemic_index: 95, weight: 100, product_type_id: 1, unit_id: 8 },

                  { name: 'Jajo gotowane', calorific_value: 78, glycemic_index: 0, weight: 50, product_type_id: 3, unit_id: 10 },
                  { name: 'Ser biały chudy', calorific_value: 34, glycemic_index: 30, weight: 30, product_type_id: 3, unit_id: 7 },
                  { name: 'Jogurt naturalny', calorific_value: 15, glycemic_index: 36, weight: 25, product_type_id: 3, unit_id: 6 },

                  { name: 'Schab pieczony', calorific_value: 160, glycemic_index: 0, weight: 55, product_type_id: 2, unit_id: 7 },
                  { name: 'Szynka wieprz. wędzona', calorific_value: 51, glycemic_index: 0, weight: 20, product_type_id: 2, unit_id: 7 },
                  { name: 'Pierś z kurczaka', calorific_value: 257, glycemic_index: 0, weight: 170, product_type_id: 2, unit_id: 10 },
                  { name: 'Filet z dorsza pieczony', calorific_value: 78, glycemic_index: 0, weight: 100, product_type_id: 2, unit_id: 8 },
                  { name: 'Łosoś wędzony', calorific_value: 162, glycemic_index: 0, weight: 100, product_type_id: 2, unit_id: 8 },

                  { name: 'Makaron durum (al dente)', calorific_value: 185, glycemic_index: 45, weight: 120, product_type_id: 6, unit_id: 8 },
                  { name: 'Chleb żytni razowy', calorific_value: 79, glycemic_index: 50, weight: 35, product_type_id: 6, unit_id: 3 },
                  { name: 'Płatki owsiane górskie', calorific_value: 37, glycemic_index: 40, weight: 10, product_type_id: 6, unit_id: 6 },
                  { name: 'Kasza gryczana', calorific_value: 24, glycemic_index: 54, weight: 20, product_type_id: 6, unit_id: 6 },
                  { name: 'Ryż brązowy', calorific_value: 35, glycemic_index: 50, weight: 25, product_type_id: 6, unit_id: 6 },

                  { name: 'Masło', calorific_value: 75, glycemic_index: 0, weight: 10, product_type_id: 7, unit_id: 5 },
                  { name: 'Olej lniany', calorific_value: 45, glycemic_index: 0, weight: 5, product_type_id: 7, unit_id: 5 },
                  { name: 'Olej rzepakowy', calorific_value: 44, glycemic_index: 0, weight: 5, product_type_id: 7, unit_id: 5 },
                  { name: 'Orzechy włoskie', calorific_value: 27, glycemic_index: 14, weight: 4, product_type_id: 7, unit_id: 10 },

                  { name: 'Kawa espresso bez cukru', calorific_value: 1, glycemic_index: 0, weight: 50, product_type_id: 4, unit_id: 1 },
                  { name: 'Herbata czarna bez cukru', calorific_value: 0, glycemic_index: 0, weight: 250, product_type_id: 4, unit_id: 9 },

                  { name: 'Zielone surowe jabłko', calorific_value: 75, glycemic_index: 38, weight: 150, product_type_id: 5, unit_id: 10 },
                  { name: 'Maliny', calorific_value: 30, glycemic_index: 25, weight: 70, product_type_id: 5, unit_id: 2 },
                  { name: 'Awokado', calorific_value: 237, glycemic_index: 10, weight: 140, product_type_id: 5, unit_id: 10 },

                  { name: 'Kapusta kiszona', calorific_value: 18, glycemic_index: 15, weight: 110, product_type_id: 8, unit_id: 9 },
                  { name: 'Papryka czerwona', calorific_value: 74, glycemic_index: 15, weight: 230, product_type_id: 8, unit_id: 10 },
                  { name: 'Pomidor', calorific_value: 32, glycemic_index: 15, weight: 170, product_type_id: 8, unit_id: 10 },
                  { name: 'Sałata', calorific_value: 1, glycemic_index: 10, weight: 5, product_type_id: 8, unit_id: 4 },
                  { name: 'Ogórek gruntowy', calorific_value: 5, glycemic_index: 15, weight: 35, product_type_id: 8, unit_id: 10 },
                  { name: 'Soczewica czerwona', calorific_value: 41, glycemic_index: 26, weight: 12, product_type_id: 8, unit_id: 6 },
                  { name: 'Ciecierzyca gotowana', calorific_value: 25, glycemic_index: 28, weight: 20, product_type_id: 8, unit_id: 6 },
                  { name: 'Marchew surowa', calorific_value: 41, glycemic_index: 16, weight: 100, product_type_id: 8, unit_id: 8 },
                  { name: 'Marchew gotowana', calorific_value: 35, glycemic_index: 49, weight: 100, product_type_id: 8, unit_id: 8 },
                  { name: 'Cukinia', calorific_value: 17, glycemic_index: 15, weight: 100, product_type_id: 8, unit_id: 8 }

                ])

Rails.logger.debug "DB: Create #{Product.count} sample products."
