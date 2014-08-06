class ApiController < ApplicationController
  def aws
    s3 = AWS::S3.new(access_key_id: ENV['AWS_ACCESS_KEY_ID'], secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], region: 'us-east-1')
    bucket = s3.buckets['lkbg-aws-box']
    bucket.objects.each do |object|
      url = 'https://s3.amazonaws.com/lkbg-aws-box/'+ object.key #=> no data is fetched from s3, just a list of keys
      g = Graffiti.new('image_url' => url)
    end


  end

end
