module Granz::DiscordCommands
  module Dog
    extend Discordrb::Commands::CommandContainer
    command :dog do |event|
      begin
        event.channel.send_embed do |embed|
          embed.image = Discordrb::Webhooks::EmbedImage.new(url: HTTP.get("https://random.dog/woof.json").parse["url"])
          embed.color = 0xffff00
        end
      rescue
        event.channel.send_embed do |embed|
          embed.colour = 0xffff00
          embed.title = "Error"
        end
      end
    end
  end
end
