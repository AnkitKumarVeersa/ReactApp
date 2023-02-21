collection :@user

attributes :id, :username, :password, :email
node(:read) {"demo"}
# child(:user) { attributes :full_name }
# node(:read) { |post| post.read_by?(@user) }