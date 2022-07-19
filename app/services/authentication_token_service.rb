class AuthenticationTokenService
  def self.call
    hmac_secret = 'my$ecretK3y'
    payload = {"test" => "test"}
    
    token = JWT.encode payload, hmac_secret, 'HS256'
  end
end