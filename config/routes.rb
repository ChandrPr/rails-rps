Rails.application.routes.draw do
  get("/", {:controller => "zebra", :action => "root"})
  get("/:our_move", { :controller => "zebra", :action => "rockpaperscissors" })
end
