contentful = require '../../../src'

megaSort = (a, b)->
  a.title.localeCompare(b.title)

module.exports =
  ignores: ["**/_*", "**/.DS_Store"]
  extensions: [
    contentful(
      access_token: 'YOUR_ACCESS_TOKEN'
      space_id: 'aqzq2qya2jm4'
      content_types: [
        {
          id: '6BYT1gNiIEyIw8Og8aQAO6',
          write: 'posts.json',
          sort: megaSort
        }
      ]
    )
  ]
