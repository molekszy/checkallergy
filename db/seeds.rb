Allergen.create!([
  {name: "jaja kurze", description: "Alergia na jajka (w szczególności na białko jaja kurzego) jest rodzajem alergii pokarmowej występuje przede wszystkim u dzieci, jednak zdarza się również u dorosłych. Do najczęstszych objawów należy katar, nudności, biegunka, bóle brzucha, swędząca wysypka, bóle głowy. Najgroźniejszym objawem jest wstrząs anafilaktyczny. Najskuteczniejszym sposobem leczenia jest zastosowanie diety eliminacyjnej. Wbrew pozorom nie jest to jednak proste rozwiązanie. Dla osoby uczulonej zagrożenie stwarza nie tylko zjedzenie samego jajka, ale także produktów, które zawierają je nawet w śladowych ilościach. Jajka znajdują się w wielu artykułach spożywczych – naleśnikach, lodach, makaronach, pierogach, pasztetach itd. Uczulenie na jajko kurze powinno wiązać się z rezygnacją z majonezu, niektórych sosów, pieczywa z błyszczącą skórką (efekt ten uzyskiwany jest przez posmarowanie chleba surowym jajkiem przed pieczeniem). Niebezpieczne może być także picie piwa i kawy, do których jajko dodawane jest w celu polepszenia jakości pianki. Alergicy powinni zatem szczególnie dokładnie analizować podany na etykietach skład produktów. Niestety, jaja mogą występować w artykułach spożywczych pod różnymi nazwami. Wśród głównych alergenów jajka kurzego, które stanowią składnik wielu produktów, należą.:  owomukoid, owoalbumina, witelina, owoglobulina, albumina, lipowitelina, globulina. Jajko zawiera szeroką gamę ważnych składników odżywczych. Nie można więc po prostu wyeliminować go z diety, aby nie doprowadzić do niedoboru białka. By zbilansować dietę, jajko można zastąpić piersią kurczaka, tuńczykiem, chudą wieprzowiną. Zaleca się również wprowadzenie do diety lekkiego twarogu, jogurtów. Przed wprowadzeniem diety eliminującej jajka, warto skorzystać z porady dietetyka."}
])
Brand.create!([
  {name: "Pudliszki"},
  {name: "Kotlin"},
  {name: "Winiary"},
  {name: "Krakus"},
  {name: "Łowicz"},
  {name: "Lubella"},
  {name: "Dawtona"},
  {name: "Polskie Młyny"},
  {name: "Bonduelle"}
])
Ingredient.create!([
  {name: "woda"},
  {name: "sól"}
])
Product.create!([
  {name: "Kukurydza", product_category_id: 9, brand_id: 7, description: "ssss", allergen_id: nil, ingredient_id: nil, ingredient_amount: "400ml"}
])
ProductCategory.create!([
  {name: "pieczywo"},
  {name: "słodycze i przekąski"},
  {name: "nabiał"},
  {name: "mięso i wędliny"},
  {name: "dania gotowe"},
  {name: "przetwory"},
  {name: "przyprawy i sosy"},
  {name: "makaron, ryż, kasza"},
  {name: "artykuły sypkie"},
  {name: "napoje"}
])
