collection :@comments

node :comments do |comment| 
     { comment.id =>{ :content => comment.comment, 
                      :author_id => comment.user_id, 
                      :contentId => comment.id, 
                      :author => User.find(comment.user_id).username,
                      :replies => Comment.where(parent_id: comment.id).pluck(:comment, :username)
                    }
     }
end