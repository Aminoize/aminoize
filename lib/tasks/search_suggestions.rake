namespace :search_suggestions do
  desc "Generate search suggestions from foods"
  task :index => :environment do
    SearchSuggestion.index_foods
  end
end
