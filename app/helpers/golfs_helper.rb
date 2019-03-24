module GolfsHelper
  def price_range_display(price_range)
    case price_range
      when "1"
       "€"
      when "2"
       "€€"
      when "3"
       "€€€"
    end
  end
  def golf_by_id(golf_if)
    Golf.find(golf_if)
  end
end
