if User.count == 0

  user = User.new
  user.username = "Pancho"
  user.password = "pancho"
  File.open("#{Rails.root}/app/assets/images/pancho.jpg", "rb") do |file|
    user.photo = file
  end
  user.save

  user = User.new
  user.username = "Kenny"
  user.password = "kenny"
  File.open("#{Rails.root}/app/assets/images/kp.jpg", "rb") do |file|
    user.photo = file
  end
  user.save

  user = User.new
  user.username = "Modelo"
  user.password = "modelo"
  File.open("#{Rails.root}/app/assets/images/modelo.jpg", "rb") do |file|
    user.photo = file
  end
  user.save

  user = User.new
  user.username = "Gus"
  user.password = "gus"
  File.open("#{Rails.root}/app/assets/images/gus.jpg", "rb") do |file|
    user.photo = file
  end
  user.save

end

if Post.count == 0

    post = Post.new
    post.text = "oye como va"
    post.user_id = 1
    post.save

    post = Post.new
    post.text = "mi ritmo"
    post.user_id = 2
    post.save

    post = Post.new
    post.text = "bueno pa gozar"
    post.user_id = 3
    post.save

    post = Post.new
    post.text = "mulata"
    post.user_id = 4
    post.save

end
