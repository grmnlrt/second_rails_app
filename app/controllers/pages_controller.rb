class PagesController < ApplicationController
  def about
  end

  def contact
    @members = ['thanh', 'julien', 'dimitri', 'damien', 'germain', 'jeremy']

    if params[:member].present?
      @members = @members.select { |member| member.start_with?(params[:member])}
    end
  end

  def home
  end
end
