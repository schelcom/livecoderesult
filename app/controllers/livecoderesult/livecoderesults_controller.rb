require_dependency "livecoderesult/application_controller"

module Livecoderesult
  class LivecoderesultsController < ApplicationController

    def create
      str_ruby_code   = params[:code]
      @ar_data        = []
      execution_stack = [] # collecting all the statements
      str_code_line   = nil

      begin
        for str_code_line in str_ruby_code.split("\n")
          execution_stack << str_code_line
          code = execution_stack.join(";")
          r = eval( code )
          code_and_result = [str_code_line, r]
          @ar_data << code_and_result
        end
      rescue
        code_and_result = [str_code_line, "Fehler: #{$!}"]
        @ar_data << code_and_result
      end

      # respond_to do |format|
      #   format.html{render "layouts/dev_code.html.erb", layout: nil}
      #   format.js{ render "layouts/dev_code.js.haml", layout: nil}
      # end
    end

  end
end
