# multiple_declarations_for_the_same_module

require_relative "low_quality"
require_relative "high_quality"

class Song
  include Downloadable
end

song = Song.new
puts song.download_low_quality # low quality
puts song.download_high_quality # high quality
# оба модуля из двух разных файлов работают в одном