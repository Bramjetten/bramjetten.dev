::Spina::Theme.register do |theme|

  theme.name = 'default'
  theme.title = 'Default Theme'

  theme.parts = [{
    name: 'body',
    title: "Body",
    part_type: "Spina::Parts::Text"
  }, {
    name: "tags",
    title: "Tags",
    part_type: "Spina::Parts::Line"
  }]

  theme.view_templates = [
    {name: 'homepage', title: 'Homepage', parts: ['body']}, 
    {name: 'show', title: 'Page', parts: ['body']},
    {name: 'articles', title: 'Articles', parts: ['body']},
    {name: 'article', title: 'Article', parts: ['body', 'tags']}
  ]

  theme.custom_pages = [{
    name: 'homepage',
    title: 'Homepage',
    deletable: false,
    view_template: 'homepage'
  }, {
    name: 'articles',
    title: "Articles",
    deletable: false,
    view_template: "articles"
  }]

  theme.navigations = [{
    name: 'main',
    label: 'Main navigation'
  }]
  
  theme.resources = [{
    name: 'articles',
    label: "Articles",
    view_template: "article",
    slug: "articles"
  }]

end
