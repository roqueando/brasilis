# frozen_string_literal: true

module Brasilis
  module Interface
    module Screens
      # Brasilis DOC
      class Uniq < Brasilis::Interface::Screen
        def run
          banner("uniQ")
          document = Core::Factories::Document.new.build(questions)

          banner("uniQ")
          puts show_doc(document)
          puts Pastel.new.magenta("saving you uniq...")
          Brasilis::Sedex.send
        end

        private

        def questions
          {
            name: asking("First, your name?"),
            father: asking("Your father name"),
            mother: asking("Your mother name"),
            naturality: asking("Where you born?"),
            birth: PROMPT.ask(Pastel.new.cyan("Your birthday"), convert: :date)
          }
        end

        def show_doc(document)
          box(%(
  Name: #{document.basic.name}
  Filiation
  ---------
  #{document.basic.filiation.mother_name} / #{document.basic.filiation.father_name}
  ---------
  Naturality
  #{document.basic.naturality}
  Born in #{document.basic.birth}
            ), "uniQ")
        end
      end
    end
  end
end
