module Granz::DiscordCommands
  module Ratewaifu
    extend Discordrb::Commands::CommandContainer
    command :ratewaifu, min_args: 1 do |event, *rating|
      begin
        arr = (0..100).to_a
        message = rating.join(" ")
        event.channel.send_embed do |embed|
          embed.title = "Waifu O' Meter"
          embed.colour = 0xffff00
          embed.description = "My rating for **#{message}** is **#{arr.sample}/100** :princess:"
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
