class AuthenticationTokenService
  HMAC_SECRET = 'my$ecretK3y'
  
  
  def self.call
    payload = {"test" => "test"}
    JWT.encode payload, HMAC_SECRET, 'HS256'
  end
end