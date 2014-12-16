class SearchController < ApplicationController

  def search
    unless params['search_params'].blank?
      @search_term = params['search_params']
      results = PgSearch.multisearch(@search_term).where( :searchable_type => [ Project.name, Tool.name])

      @search_results = Hash.new

      results.each do |result|
        klass = Object.const_get(result.searchable_type)

        if klass.present?
          result_group = @search_results[result.searchable_type] || @search_results[result.searchable_type] = Hash.new
          result_group[result] = klass.find(result.searchable_id, :select => :name)
        end
      end
    end
  end
end
