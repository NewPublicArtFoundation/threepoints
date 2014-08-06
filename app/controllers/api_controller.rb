class ApiController < ApplicationController
  def aws
    s3 = AWS::S3.new(access_key_id: ENV['AWS_ACCESS_KEY_ID'], secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], region: 'us-east-1')
    bucket = s3.buckets['lkbg-aws-box']
    i = 0
    bucket.objects.each do |object|
      i = i+1
      break if i > 1000
      url = 'https://s3.amazonaws.com/lkbg-aws-box/'+ object.key #=> no data is fetched from s3, just a list of keys
      g = Graffiti.new('image_url' => url)
      g.save
      puts 'Created ' + g.image_url
    end
  end
end
