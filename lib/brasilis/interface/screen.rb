# frozen_string_literal: true

module Brasilis
  module Interface
    # Screen top class
    class Screen
      def banner(name = "brasilis")
        system "clear"
        font = TTY::Font.new(:standard)
        puts font.write(name)
      end

      def asking(text, _options = {})
        PROMPT.ask(Pastel.new.cyan(text))
      end

      def box_style
        {
          fg: :cyan,
          bg: :green,
          border: {
            fg: :yellow,
            bg: :green
          }
        }
      end

      def box(text, title = "Brasilis")
        TTY::Box
          .frame(
            width: 40,
            title: { top_left: title },
            style: box_style
          ) { text }
      end
    end
  end
end
