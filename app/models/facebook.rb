module Facebook
  class Stream
    attr_accessor :message, :uid, :published_at, :user

   def self.get(fb_user)
     posts = user.fb_user.stream[:posts]
     return nil if posts.nil? or posts.empty?
     streams = []
     posts.each do |post|
        stream = Stream.new
        stream.message = post['message']
        stream.time = Time.at(post['updated_time'].to_i)
        stream.uid = post['source_id']
        # if an existing user of rails app, we can connect more local functionality by uncommenting this line
        # stream.user = post['source_id'] ? User.find_by_fb_user_id(post['source_id']) : nil
        streams << stream
      end
   rescue
      return "There were problems fetching the facebook streams"
   end

  end
end