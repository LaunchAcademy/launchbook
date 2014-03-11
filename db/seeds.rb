posts_attrs = [
  {
    author: "Adam Sheehan",
    content: "Want to me to diagram that for you?",
    liked: false,
  },
  {
    author: "Eric Kelly",
    content: "Everyone, please set up the preferences in Apollo for Sublime.",
    liked: true,
  },
  {
    author: "Helen Hood",
    content: "One day I will steal Mr. G!",
    liked: false,
  },
  {
    author: "Sam McTaggart",
    content: "Objective C is incredible.",
    liked: false,
  }
]

posts_attrs.each do |attr|
  post = Post.find_by(content: attr[:content])

  if post.nil?
    Post.create(attr)
  end
end
