# frozen_string_literal: true

require 'json'

class NamesApiController < ApplicationController
  def index
    @names = Name.select('id, name, surname').all
    render json: @names.to_json
  end
end
