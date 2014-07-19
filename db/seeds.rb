# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Artist.create([{
    name: 'Gift',
    slug: 'gift',
    description: 'San Francisco born, international street artist',
    twitter_url: 'http://twitter.com/rememberlenny',
    instagram_url: 'http://instagram.com/rememberlenny',
    flickr_url: 'http://flickr.com/horsegoo',
    tumblr_url: 'http://blog.rememberlenny.com'
  },{
    name: 'Mels',
    slug: 'mels',
    description: 'Shanghai based artist from Minneapolis',
    instagram_url: 'http://instagram.com/rememberlenny',
    flickr_url: 'http://flickr.com/horsegoo',
    tumblr_url: 'http://blog.rememberlenny.com'
  },{
    name: 'Lame',
    slug: 'lame',
    twitter_url: 'http://twitter.com/rememberlenny',
    instagram_url: 'http://instagram.com/rememberlenny',
    tumblr_url: 'http://blog.rememberlenny.com'
  },{
    name: 'Read',
    slug: 'read',
    description: 'Native Shanghainesse',
    twitter_url: 'http://twitter.com/rememberlenny',
    instagram_url: 'http://instagram.com/rememberlenny',
  }
])

Location.create([{
    name: 'Moganshan Lu',
    slug: 'moganshan-lu',
    address: 'Moganshan lu, Shanghai',
  },{
    name: 'Five Points',
    slug: 'five-points',
    address: 'Five Points, Queens',
  },{
    name: 'Thunder Dome',
    slug: 'thunder-dome',
    address: 'Pacific Bell Baseball park',
  }
])

