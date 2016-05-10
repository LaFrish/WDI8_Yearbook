Aws.config.update({
  region: 'us-east-1',
  credentials: Aws::Credentials.new(ENV['AKIAJEOK6U5AD7RJAFFA'], ENV['bt1oajdcczHUp97sErfoO3xz55ufNEOiHvUatODS']),
})

S3_BUCKET = Aws::S3::Resource.new.bucket(ENV['wdi8'])
