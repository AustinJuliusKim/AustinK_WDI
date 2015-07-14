class FaceDetectJob < ActiveJob::Base
  queue_as :default

   def perform(url)
    	sleep 5
		@search = Search.new({search_term: url})
		@search.save
  end
end
