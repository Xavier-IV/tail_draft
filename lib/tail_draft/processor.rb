# frozen_string_literal: true

require 'tail_draft/util/generator'

module TailDraft
  # Processor for tail_draft
  class Processor
    include TailDraft::Util

    def initialize
      @key_tag = :tail_draft
    end

    def self.build_single(name, classes)
      <<~OUTPUT
        #{name} {
          @apply #{classes.join(' ')};
        }
      OUTPUT
    end

    def self.auto_process(file_content, collections)
      return if file_content.nil?

      regex = /class="(?:(?!#{@key_tag}:)[^"])*"/
      class_occurrences = file_content.scan(regex)

      class_occurrences.each do |occurrence|
        gen_class = Generator.random_class
        file_content = file_content.gsub(/#{occurrence}/, "class=\"#{gen_class}\"")

        collections.push({
                           generated_name: gen_class,
                           provided_name: nil,
                           class: occurrence.to_s.match(/class="([^"]*)"/)[1],
                           named: false
                         })
      end
      file_content
    end

    def self.sort(classes)
      classes.sort
    end
  end
end
