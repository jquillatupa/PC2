class Tweet < ActiveRecord::Base
  attr_accessible :status, :text, :user

  belongs_to :carrera

  Twitter.configure do |config|
    config.consumer_key = 'u8Q73a63ZJPNjUoC3AvgsQ' 
    config.consumer_secret = 'CIKioV4u5XHtCMxdvdfCggYGdlYRZDqmO4BzUNM58'
    config.oauth_token = '67218493-TrU2VpMcYjaFr193oRTxSUj6Zt7VZmsEpTtrkLYvl'
    config.oauth_token_secret = '3hfilf3ycJ3tFHoXdb7PU6cT2t7106haj46EnE4s'
  end

  def update_status
  	return "sin update" if self.message.blank?
  	Twitter.update(self.message)
  end

end
