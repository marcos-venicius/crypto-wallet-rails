# frozen_string_literal: true

namespace :dev do
  desc 'Configure the environment: db:drop, db:create, db:migrate, db:seed'
  task setup: :environment do
    unless Rails.env.development?
      puts "\033[1;31m[!] \033[0;31mThis task can be only ran in development environment\033[m"
      next
    end

    operations = ['rails db:drop', 'rails db:create', 'rails db:migrate', 'rails db:seed']

    operations.each do |operation|
      puts "\033[1;37m[#{operation}] \t\t \033[1;33mSTARTED\033[0m"

      `#{operation}`

      puts "\033[1;37m[#{operation}] \t\t \033[1;32mFINISHED\033[0m"
    end
  end
end
