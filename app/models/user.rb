class User < ApplicationRecord
    has_secure_password

    # def password=(new_password)
    #     self.password_digest = dumb_hash(new_password)
    # end
end
