class ChartsController < ApplicationController
  def new_users
    render json: User.group_by_month(:created_at).count
  end

  def by_month_users
    render json: User.group_by_month_of_year(:created_at).count.map{ |k, v| [I18n.t("date.month_names")[k], v] }
  end
end
