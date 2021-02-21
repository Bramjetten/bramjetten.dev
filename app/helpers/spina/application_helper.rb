module Spina
  module ApplicationHelper
    
    def articles
      @articles ||= Spina::Resource.find_by(name: "articles").pages.live
    end
    
    def nav_items
      @nav_items ||= Spina::Navigation.find_by(name: "main").navigation_items.roots.sorted
    end
    
  end
end