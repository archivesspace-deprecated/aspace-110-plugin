# monkey patching the set_search_criteria method
require Rails.root.join('app/controllers/search_controller')

class SearchController < ApplicationController

  def set_search_criteria
    @criteria = params.select{|k,v|
      ["page", "q", "type", "sort",
       "filter_term", "root_record", "format"].include?(k) and not v.blank?
    }

    @criteria["page"] ||= 1
    @criteria["sort"] = "title_sort asc" unless @criteria["sort"] or @criteria["q"] or params["advanced"].present?

    if @criteria["filter_term"]
      @criteria["filter_term[]"] = Array(@criteria["filter_term"]).reject{|v| v.blank?}
      @criteria.delete("filter_term")
    end

    if params[:type].blank?
      @criteria['type[]'] = DETAIL_TYPES
    else
      @criteria['type[]'] = Array(params[:type]).keep_if {|t| VIEWABLE_TYPES.include?(t)}
      @criteria.delete("type")
    end

    @criteria['exclude[]'] = params[:exclude] if not params[:exclude].blank?
    @criteria['facet[]'] = FACETS
  end

end

