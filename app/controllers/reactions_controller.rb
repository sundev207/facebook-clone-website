class ReactionsController < ApplicationController
  def like
    reaction = Reaction.find_by(user_id: current_user.id, post_id: params[:post_id])

    unless reaction.nil?
      if reaction.like
        reaction.destroy
      else  
        update(reaction, true)
      end
    else
      save(true)
    end
  end

  def dislike
    reaction = Reaction.find_by(user_id: current_user.id, post_id: params[:post_id])

    unless reaction.nil?
      if reaction.dislike
        reaction.destroy
      else  
        update(reaction, false)
      end
    else
      save(false)
    end
  end

  def save(like)
    post = Post.find(params[:post_id])
    reaction = post.reactions.build
    reaction.user = current_user
    reaction.like = like
    reaction.dislike = !like
    reaction.save
  end

  def update(reaction, like)
    reaction.like = like
    reaction.dislike = !like

    reaction.save
  end
end
