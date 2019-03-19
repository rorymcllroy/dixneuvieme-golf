module GolfcommentsHelper
  def comments_by_golf(golf_id) 
    Golfcomment.all.where(golf_id: golf_id)
  end
end
