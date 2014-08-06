class ApiController < ApplicationController
  def aws
    s3 = AWS::S3.new(access_key_id: ENV['AWS_ACCESS_KEY_ID'], secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'], region: 'us-east-1')
    i = 0
    bucket = s3.buckets['lkbg-aws-box']
    bucket.objects.each do |object|
      i = i+1
      break if i > 1000
      url = 'https://s3.amazonaws.com/lkbg-aws-box/'+ object.key #=> no data is fetched from s3, just a list of keys
      g = Graffiti.new('image_url' => url)
      g.save
      puts 'Created ' + g.image_url
    end
  end

  def return_a_graffiti
    range_high = Graffiti.count - 1
    num = rand(0..range_high)
    @g = Graffiti.find(num)
      if @g.image_url != nil
        the_image = @g.image_url
      elsif @g.images != nil
        the_image = @g.images
      else
        return 'No images.'
      end
    respond_to do |f|
      f.json {
        render json: the_image
      }
    end
  end
end
