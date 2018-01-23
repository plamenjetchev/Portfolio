3.times do |topic|
  Topic.create!(
    title: "Topic #{topic}"
  )
end

puts "3 Topics created"

10.times do |blog|
  Blog.create!(
    title: "My Blog Post #{blog}",
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque rhoncus, leo eget semper fermentum, justo odio posuere dolor, tincidunt rutrum nisl metus eu justo. Sed in malesuada ante. Integer ipsum dolor, tincidunt condimentum dui nec, pellentesque tincidunt velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi vulputate magna nec sodales congue. Fusce consectetur iaculis dignissim. Etiam blandit augue arcu, cursus viverra velit gravida eu. Ut aliquam ante eu nibh sodales aliquet. Phasellus pretium nisl eu suscipit eleifend. Nam ultricies non nunc a malesuada.",
    topic_id: Topic.last.id
  )
end

puts "10 blog posts created"

5.times do |skill|
  Skill.create!(
    title: "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skils created"

8.times do |portfolio_item|
  MyPortfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Ruby on Rails",
    body: "Fusce sit amet maximus odio. Praesent iaculis tempus convallis. Sed diam ipsum, dignissim sed ligula quis, placerat blandit nisl. In tincidunt mi at scelerisque tempor. Donec aliquam ipsum a blandit laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus tempor erat ut erat congue pellentesque. Suspendisse potenti. Aenean non efficitur felis.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

  1.times do |portfolio_item|
  MyPortfolio.create!(
    title: "Portfolio title: #{portfolio_item}",
    subtitle: "Angular",
    body: "Fusce sit amet maximus odio. Praesent iaculis tempus convallis. Sed diam ipsum, dignissim sed ligula quis, placerat blandit nisl. In tincidunt mi at scelerisque tempor. Donec aliquam ipsum a blandit laoreet. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus tempor erat ut erat congue pellentesque. Suspendisse potenti. Aenean non efficitur felis.",
    main_image: "http://placehold.it/600x400",
    thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 porfolios created"



