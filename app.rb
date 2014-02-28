require 'sinatra'

def posts
  [
    {
      user: {
        name: "Adam Sheehan",
        avatar_url: "http://placekitten.com/g/50/50"
      },
      content: "I love kats but I can't spell.",
      comments: [
        {
          user: {
            name: "Helen Hood",
            avatar_url: "http://placekitten.com/g/50/50"
          },
          content: "Cats are awesome! Especially Mr. G."
        },
        {
          user: {
            name: "Sam McTaggart",
            avatar_url: "http://placekitten.com/g/50/50"
          },
          content: "I don't like cats."
        }
      ]
    }
  ]
end

get '/' do
  @posts = posts
  erb :index
end
