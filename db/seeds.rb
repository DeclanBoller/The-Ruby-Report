User.destroy_all
u1 = User.create :name => "Wee Man", :email => "weeman@ga.co", :password => "chicken"
u2 = User.create :name => "Johnny Knoxville", :email => "welcometojackass@ga.co", :password => "chicken"
u3 = User.create :name => "Admin", :email => "admin@admin.co", :password => "chicken"

Category.destroy_all
c1 = Category.create :category => "Breaking"
c2 = Category.create :category => "National"
c3 = Category.create :category => "International"
c4 = Category.create :category => "Politics"
c5 = Category.create :category => "Sports"

Article.destroy_all
a1 = Article.create :headline => "Two arrested after gun found in car at Sydney Airport", :story => "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", :sources => "", :author => "9 News Team", :exclusive => false

a2 = Article.create :headline => "US and North Korea to Hold Talks on 2nd Trump-Kim Summit", :story => "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", :sources => "", :author => "Declan Boller", :exclusive => false

a3 = Article.create :headline => "The Navy Is Gearing Up for 'Leaner, Agile' Operations in Arctic, North Atlantic", :story => "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", :sources => "", :author => "Declan Boller", :exclusive => false

a4 = Article.create :headline => "Childhood Trauma Exposure Is All Too Common", :story => "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", :sources => "Psychology Today", :author => "Poppy-Louise Batts", :exclusive => true

a5 = Article.create :headline => "35 Facial Expressions That Convey Emotions Across Cultures", :story => "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.", :sources => "Psychology Today", :author => "Poppy-Louise Batts", :exclusive => true

Image.destroy_all
m1 = Image.create :image => "https://timedotcom.files.wordpress.com/2017/12/jae-c-hong-walk-of-fame-top-100-photos-2017.jpg?quality=85&w=2160", :caption => "Toly Shtapenko of Ukraine, wearing a Superman costume, takes a long stride on the Hollywood"

m2 = Image.create :image => "https://timedotcom.files.wordpress.com/2017/12/ammar-awad-jerusalem-protest-top-100-photos-2017.jpg?quality=85&w=2159", :caption => "Palestinians react after tear gas was shot by Israeli forces following Friday prayers on a street"

m3 = Image.create :image => "https://timedotcom.files.wordpress.com/2017/12/dave-watts-morocco-goats-trees-top-100-photos-2017.jpg?quality=85&w=2169", :caption => "Domestic goats climb an Argan tree to feed on leaves in Essaouira, Morocco."

m4 = Image.create :image => "https://timedotcom.files.wordpress.com/2017/12/joseph-eid-syria-top-100-photos-2017.jpg?quality=85&w=2113", :caption => "Mohammad Mohiedine Anis, 70, smokes a pipe in his destroyed bedroom listening to music on his vinyl player in Aleppo's formerly rebel-held al-Shaar neighborhood on March 9."

m5 = Image.create :image => "https://timedotcom.files.wordpress.com/2017/12/adrian-kraus-national-anthem-top-100-photos-2017.jpg?quality=85&w=2213", :caption => "Buffalo Bills players take a knee prior to a game against the Oakland Raiders in Orchard Park, N.Y., on Oct. 29."

Like.destroy_all
l1 = Like.create :liked => true
l2 = Like.create :liked => true
l3 = Like.create :liked => true
l4 = Like.create :liked => false
l5 = Like.create :liked => false

# Associations - Categories to Articles
a1.categories << c1 << c4
a2.categories << c3
a3.categories << c4
a4.categories << c2
a5.categories << c1

# Images to Articles
a1.images << m4
a2.images << m2
a3.images << m1
a4.images << m3
a5.images << m5

# Likes to Articles
a1.likes << l1 << l2 << l3 << l4 << l5
u1.likes << l1
u2.likes << l5

#Article.first.likes
