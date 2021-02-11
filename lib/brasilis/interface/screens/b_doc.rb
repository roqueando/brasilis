# frozen_string_literal: true

module Brasilis
  module Interface
    module Screens
      # Brasilis DOC
      class BDoc < Brasilis::Interface::Screen
        def run
          banner("Brasilis DOC")
          document = Core::Factories::Document.new.build(questions)

          banner("Brasilis DOC")
          puts show_doc(document)
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
            ))
        end
      end
    end
  end
end
