
doc = Nokogiri::HTML(open("https://wall.alphacoders.com/search.php?lang=French&search=chat"))
    @taburl = []
    @tabtitle = ["chat dorée","chat chat","un petit chat trés mignion","chat gris","chat de la vega","chat petit","chat saute","chat de se chat"]
    myhash = {}
    20.times do
        doc.css('.boxgrid img @src').each do |url| @taburl << url.text end
    end

    8.times do |y|
        @items = Item.create(title:@tabtitle[y], description:Faker::Lorem.paragraph, price:rand(1.00...10), image_url:@taburl[y])
    end
